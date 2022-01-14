"""web URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/4.0/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path, include

from . import views

urlpatterns = [
    path('', views.index, name='index'),
    path('login/', views.login, name='login'),
    path('register/', views.register, name='register'),
    path('author/<int:authorid_>/', views.author, name='author'),
    path('book/add/', views.book_add, name='book_add'),
    path('book/add/<int:bookid_>/', views.book_add_ext, name='book_add_ext'),
    path('book/<int:bookid_>/', views.book, name='book'),
    path('book/<int:bookid_>/buy/', views.book_buy, name='book_buy'),
    path('book/<int:bookid_>/review/', views.book_review, name='book_review'),
    path('book/<int:bookid_>/play/', views.book_play, name='book_play'),
    path('logout/', views.logout, name='logout'),
    path('admin/', admin.site.urls),
]
#urlpatterns = [
#    path('admin/', admin.site.urls),
#]
