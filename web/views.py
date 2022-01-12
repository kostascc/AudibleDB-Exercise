from django.http import HttpResponse
from django.http.response import HttpResponseForbidden, HttpResponseNotFound
from django.shortcuts import redirect, render
from .models import Author, Book, Bookgenre, Review, Bookauthor, FullBookV, User, ConcatBookV, ReviewV
# from django.contrib.auth.models import User as AuthUser
from django.contrib.auth import authenticate
from django.contrib import auth
from django.contrib.auth import login as AuthLogin
from django.db.models import Q
from django import *
from datetime import datetime

def index(request):
    if request.user.is_authenticated:
        user = User.objects.get(username=request.user.username)

        if request.method == "POST":
            query = request.POST['query']
            bookvs = ConcatBookV.objects.filter(Q(genres__contains=query)|Q(title__contains=query)|Q(authornames__contains=query)|Q(narratornames__contains=query)|Q(languages__contains=query))
            authors = Author.objects.filter(Q(name__contains=query))
            context = {
                'user': user,
                'bookvs': bookvs,
                'request': request,
                'authors': authors
                }

        else:
            user = User.objects.get(username=request.user.username)

            context = {
                'user': user,
                'request': request
                }
        return render(request, 'index.html', context)
    else:
        # Do something for anonymous users.
        return redirect(login)
    
    return HttpResponse('Index: ' + request.user.email + ';')

def search(request):
    return HttpResponse('Search')

def book_play(request,bookid_):
    if request.user.is_authenticated:
        user = User.objects.get(username=request.user.username)

        book = ConcatBookV.objects.get(bookid=bookid_)
        
        context = {
            'user': user,
            'book': book,
            }

        return render(request, 'play.html', context)
    else:
        # Do something for anonymous users.
        return redirect(login)

def author(request,authorid_):
    if request.user.is_authenticated:
        author = Author.objects.get(authorid=authorid_)
        user = User.objects.get(username=request.user.username)
        books = ConcatBookV.objects.filter(authornames=author.name)

        context = {
            'authorid': authorid_,
            'author': author,
            'user': user,
            'bookvs': books
            }
        return render(request, 'author.html', context)
    else:
        # Do something for anonymous users.
        return redirect(login)
    
def book(request,bookid_):
    if request.user.is_authenticated:
        user = User.objects.get(username=request.user.username)
        book = ConcatBookV.objects.get(bookid=bookid_)
        reviews = ReviewV.objects.filter(Q(bookid=bookid_) & ~Q(userid=user.userid))
        myreview = ReviewV.objects.filter(bookid=bookid_,userid=user.userid)
        if len(myreview) > 0:
            myreview = myreview[0]
        else:
            myreview = None

        book.overallstarsString = format(book.overallstars, '.1f')
        book.genres = book.genres.upper()
        book.languages = book.languages.upper()

        context = {
            'bookid': bookid_,
            'user': user,
            'book': book,
            'reviews': reviews,
            'myreview': myreview
            }
        return render(request, 'book.html', context)
    else:
        # Do something for anonymous users.
        return redirect(login)

def book_review(request,bookid_):
    if request.method == "POST":
        if request.user.is_authenticated:
            user = User.objects.get(username=request.user.username)

            description = request.POST['description']
            stars = request.POST['stars']
            
            if stars == "" or int(stars) < 1 or description == "":
                return HttpResponse('Please fill in the form correctly before posting!')
                
            book = Book.objects.get(bookid=bookid_)

            reviews = Review.objects.filter(Q(bookid=bookid_) & Q(userid=user.userid))
            # if len(reviews) == 0:
            #     Review.objects.create(bookid=book, userid=user, stars=int(stars), datetime=datetime.now())
            # else:
            #     review = Review.objects.get(bookid=bookid_,userid=user.userid)
            #     review.description = description
            #     review.stars = stars
            #     review.datetime = datetime.now()
            #     review.save()
            review = Review.objects.filter(bookid=book,userid=user)
            if review is not None:
                review.delete()
            Review.objects.update_or_create(bookid=book, userid=user, stars=int(stars), description=description, datetime=datetime.now())


            return redirect('book',bookid_)
        else:
            # Do something for anonymous users.
            return redirect(login)
    else:
        return redirect('book',bookid_)

def login(request):
    if request.user.is_authenticated:
        return redirect(index)
    else:
        if request.method == "POST":
            username = request.POST['username']
            password = request.POST['password']

            if username=="" or password=="":
                context = {'error': 'Please fill in your Username and Password!'}
                return render(request, 'login.html', context)
            else:
                authUser = auth.authenticate(username=username,password=password)
                if authUser is not None:
                    auth.login(request, authUser)
                    return redirect(index)
                else:
                    uSearch = User.objects.filter(Q(username=username) & Q(passwordhash=password))
                    if len(uSearch) > 0:
                        auth.models.User.objects.create_user(username=username, password=password)
                        authUser = auth.authenticate(username=username,password=password)
                        if authUser is not None:
                            auth.login(request, authUser)
                            return redirect(index)
                        else:
                            context = {'error': 'Fatal Error! Your account doesn\'t exist.'}
                            return render(request, 'register.html', context)
                    else:
                        context = {'error': 'Oops, your account wasn\'t found!'}
                        return render(request, 'login.html', context)

        else:
            context = {
                }
            return render(request, 'login.html', context)

def register(request):
    if request.user.is_authenticated:
        return redirect(index)
    else:
        if request.method == "POST":
            username = request.POST['username']
            password = request.POST['password']
            firstname = request.POST['firstname']
            lastname = request.POST['lastname']

            if username=="" or password=="" or firstname == "" or lastname == "":
                context = {'error': 'Please fill in the form!'}
                return render(request, 'register.html', context)
            else:
                users = User.objects.filter(username=username)
                if len(users) > 0:
                    context = {'error': 'This username has been taken.'}
                    return render(request, 'register.html', context)
                user = User.objects.create(username=username, passwordhash=password, firstname=firstname, lastname=lastname)
                auth.models.User.objects.create_user(username=username, password=password)
                authUser = auth.authenticate(username=username,password=password)
                if authUser is not None:
                    auth.login(request, authUser)
                    return redirect(index)
                else:
                    context = {'error': 'Fatal Error! Try again using different username.'}
                    return render(request, 'register.html', context)

        else:
            context = {
                }
            return render(request, 'register.html', context)
        

def logout(request):
    if request.user.is_authenticated:
        context = {'error': 'Bye ' + request.user.username}
        auth.logout(request)
        return redirect(login)
    else:
         return redirect(login)

def reviews(request):
    return HttpResponse('reviews')

def buy(request):
    return HttpResponse('buy')    