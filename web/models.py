# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey and OneToOneField has `on_delete` set to the desired behavior
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models
from django.urls import reverse

# class AuthGroup(models.Model):
#     name = models.CharField(unique=True, max_length=150)

#     class Meta:
#         managed = False
#         db_table = 'auth_group'


# class AuthGroupPermissions(models.Model):
#     id = models.BigAutoField(primary_key=True)
#     group = models.ForeignKey(AuthGroup, models.DO_NOTHING)
#     permission = models.ForeignKey('AuthPermission', models.DO_NOTHING)

#     class Meta:
#         managed = False
#         db_table = 'auth_group_permissions'
#         unique_together = (('group', 'permission'),)


# class AuthPermission(models.Model):
#     name = models.CharField(max_length=255)
#     content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING)
#     codename = models.CharField(max_length=100)

#     class Meta:
#         managed = False
#         db_table = 'auth_permission'
#         unique_together = (('content_type', 'codename'),)


# class AuthUser(models.Model):
#     password = models.CharField(max_length=128)
#     last_login = models.DateTimeField(blank=True, null=True)
#     is_superuser = models.IntegerField()
#     username = models.CharField(unique=True, max_length=150)
#     first_name = models.CharField(max_length=150)
#     last_name = models.CharField(max_length=150)
#     email = models.CharField(max_length=254)
#     is_staff = models.IntegerField()
#     is_active = models.IntegerField()
#     date_joined = models.DateTimeField()

#     class Meta:
#         managed = False
#         db_table = 'auth_user'


# class AuthUserGroups(models.Model):
#     id = models.BigAutoField(primary_key=True)
#     user = models.ForeignKey(AuthUser, models.DO_NOTHING)
#     group = models.ForeignKey(AuthGroup, models.DO_NOTHING)

#     class Meta:
#         managed = False
#         db_table = 'auth_user_groups'
#         unique_together = (('user', 'group'),)


# class AuthUserUserPermissions(models.Model):
#     id = models.BigAutoField(primary_key=True)
#     user = models.ForeignKey(AuthUser, models.DO_NOTHING)
#     permission = models.ForeignKey(AuthPermission, models.DO_NOTHING)

#     class Meta:
#         managed = False
#         db_table = 'auth_user_user_permissions'
#         unique_together = (('user', 'permission'),)


class Author(models.Model):
    authorid = models.AutoField(db_column='AuthorID', primary_key=True)  # Field name made lowercase.
    name = models.CharField(db_column='Name', max_length=45)  # Field name made lowercase.
    country = models.CharField(db_column='Country', max_length=7, blank=True, null=True)  # Field name made lowercase.
    bio = models.CharField(db_column='Bio', max_length=400, blank=True, null=True)  # Field name made lowercase.
    website = models.CharField(db_column='Website', max_length=200, blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'author'

    def get_absolute_url(self):
        return reverse('author_detail', args=[self.authorid])

class Book(models.Model):
    bookid = models.AutoField(db_column='BookID', primary_key=True)  # Field name made lowercase.
    title = models.CharField(db_column='Title', unique=True, max_length=40)  # Field name made lowercase.
    description = models.CharField(db_column='Description', max_length=100, blank=True, null=True)  # Field name made lowercase.
    length = models.IntegerField(db_column='Length')  # Field name made lowercase.
    releasedate = models.DateField(db_column='ReleaseDate', blank=True, null=True)  # Field name made lowercase.
    price = models.FloatField(db_column='Price')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'book'

    def get_absolute_url(self):
        return reverse('book_detail', args=[self.bookid])

class Bookauthor(models.Model):
    bookid = models.OneToOneField(Book, models.DO_NOTHING, db_column='BookID', primary_key=True)  # Field name made lowercase.
    authorid = models.ForeignKey(Author, models.DO_NOTHING, db_column='AuthorID')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'bookauthor'
        unique_together = (('bookid', 'authorid'),)


class Bookgenre(models.Model):
    bookid = models.OneToOneField(Book, models.DO_NOTHING, db_column='BookID', primary_key=True)  # Field name made lowercase.
    genre = models.CharField(db_column='Genre', max_length=8)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'bookgenre'
        unique_together = (('bookid', 'genre'),)


class Booklanguage(models.Model):
    bookid = models.OneToOneField(Book, models.DO_NOTHING, db_column='BookID', primary_key=True)  # Field name made lowercase.
    language = models.CharField(db_column='Language', max_length=2)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'booklanguage'
        unique_together = (('bookid', 'language'),)


class Booknarrator(models.Model):
    narratorid = models.OneToOneField('Narrator', models.DO_NOTHING, db_column='NarratorID', primary_key=True)  # Field name made lowercase.
    bookid = models.ForeignKey(Book, models.DO_NOTHING, db_column='BookID')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'booknarrator'
        unique_together = (('narratorid', 'bookid'),)


class Buys(models.Model):
    bookid = models.OneToOneField(Book, models.DO_NOTHING, db_column='BookID', primary_key=True)  # Field name made lowercase.
    userid = models.ForeignKey('User', models.DO_NOTHING, db_column='UserID')  # Field name made lowercase.
    datetime = models.DateTimeField(db_column='DateTime')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'buys'
        unique_together = (('bookid', 'userid'),)


# class DjangoAdminLog(models.Model):
#     action_time = models.DateTimeField()
#     object_id = models.TextField(blank=True, null=True)
#     object_repr = models.CharField(max_length=200)
#     action_flag = models.PositiveSmallIntegerField()
#     change_message = models.TextField()
#     content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING, blank=True, null=True)
#     user = models.ForeignKey(AuthUser, models.DO_NOTHING)

#     class Meta:
#         managed = False
#         db_table = 'django_admin_log'


# class DjangoContentType(models.Model):
#     app_label = models.CharField(max_length=100)
#     model = models.CharField(max_length=100)

#     class Meta:
#         managed = False
#         db_table = 'django_content_type'
#         unique_together = (('app_label', 'model'),)


# class DjangoMigrations(models.Model):
#     id = models.BigAutoField(primary_key=True)
#     app = models.CharField(max_length=255)
#     name = models.CharField(max_length=255)
#     applied = models.DateTimeField()

#     class Meta:
#         managed = False
#         db_table = 'django_migrations'


# class DjangoSession(models.Model):
#     session_key = models.CharField(primary_key=True, max_length=40)
#     session_data = models.TextField()
#     expire_date = models.DateTimeField()

#     class Meta:
#         managed = False
#         db_table = 'django_session'


# class Listens(models.Model):
#     userid = models.OneToOneField('User', models.DO_NOTHING, db_column='UserID', primary_key=True)  # Field name made lowercase.
#     bookid = models.ForeignKey('Playtime', models.DO_NOTHING, db_column='BookID')  # Field name made lowercase.
#     playtimeid = models.ForeignKey('Playtime', models.DO_NOTHING, db_column='PlayTimeID')  # Field name made lowercase.
#     datetimebegin = models.DateTimeField(db_column='DateTimeBegin')  # Field name made lowercase.
#     datetimeend = models.DateTimeField(db_column='DateTimeEnd', blank=True, null=True)  # Field name made lowercase.

#     class Meta:
#         managed = False
#         db_table = 'listens'
#         unique_together = (('userid', 'bookid', 'playtimeid'),)


class Narrator(models.Model):
    narratorid = models.AutoField(db_column='NarratorID', primary_key=True)  # Field name made lowercase.
    name = models.CharField(db_column='Name', max_length=45)  # Field name made lowercase.
    country = models.CharField(db_column='Country', max_length=7, blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'narrator'


class Playtime(models.Model):
    playtimeid = models.AutoField(db_column='PlayTimeID', primary_key=True)  # Field name made lowercase.
    bookid = models.ForeignKey(Book, models.DO_NOTHING, db_column='BookID')  # Field name made lowercase.
    begintimestamp = models.IntegerField(db_column='BeginTimestamp')  # Field name made lowercase.
    endtimestamp = models.IntegerField(db_column='EndTimestamp', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'playtime'
        unique_together = (('playtimeid', 'bookid'),)


class Review(models.Model):
    bookid = models.OneToOneField(Book, models.DO_NOTHING, db_column='BookID', primary_key=True)  # Field name made lowercase.
    userid = models.ForeignKey('User', models.DO_NOTHING, db_column='UserID')  # Field name made lowercase.
    stars = models.IntegerField(db_column='Stars')  # Field name made lowercase.
    description = models.CharField(db_column='Description', max_length=300, blank=True, null=True)  # Field name made lowercase.
    datetime = models.DateTimeField(db_column='DateTime')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'review'
        unique_together = (('bookid', 'userid'),)

    def get_absolute_url(self):
        return reverse('review_detail', args=[self.reviewid])

class User(models.Model):
    userid = models.AutoField(db_column='UserID', primary_key=True)  # Field name made lowercase.
    firstname = models.CharField(db_column='FirstName', max_length=45)  # Field name made lowercase.
    lastname = models.CharField(db_column='LastName', max_length=45)  # Field name made lowercase.
    username = models.CharField(db_column='Username', max_length=45)  # Field name made lowercase.
    passwordhash = models.CharField(db_column='PasswordHash', max_length=45)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'user'

    def get_absolute_url(self):
        return reverse('user_detail', args=[self.userid])        


# Views:

class FullBookV(models.Model):
    bookid = models.AutoField(db_column='BookID', primary_key=True)  # Field name made lowercase.
    title = models.CharField(db_column='Title', unique=True, max_length=40)  # Field name made lowercase.
    releasedate = models.DateField(db_column='ReleaseDate', blank=True, null=True)  # Field name made lowercase.
    price = models.FloatField(db_column='Price')  # Field name made lowercase.
    overallstars = models.FloatField(db_column='OverallStars')  # Field name made lowercase.
    authorname = models.CharField(db_column='AuthorName', max_length=45)  # Field name made lowercase.
    narratorname = models.CharField(db_column='NarratorName', max_length=45)  # Field name made lowercase.
    genre = models.CharField(db_column='Genre', max_length=45)  # Field name made lowercase.
    language = models.CharField(db_column='Language', max_length=45)  # Field name made lowercase.
    

    class Meta:
        managed = False
        db_table = 'fullbook_v'

    def get_absolute_url(self):
        return reverse('book_detail', args=[self.bookid])

class ConcatBookV(models.Model):
    bookid = models.AutoField(db_column='BookID', primary_key=True)  # Field name made lowercase.
    title = models.CharField(db_column='Title', unique=True, max_length=40)  # Field name made lowercase.
    releasedate = models.DateField(db_column='ReleaseDate', blank=True, null=True)  # Field name made lowercase.
    price = models.FloatField(db_column='Price')  # Field name made lowercase.
    overallstars = models.FloatField(db_column='OverallStars')  # Field name made lowercase.
    authornames = models.CharField(db_column='AuthorNames', max_length=100)  # Field name made lowercase.
    narratornames = models.CharField(db_column='NarratorNames', max_length=100)  # Field name made lowercase.
    genres = models.CharField(db_column='Genres', max_length=100)  # Field name made lowercase.
    languages = models.CharField(db_column='Languages', max_length=100)  # Field name made lowercase.
    

    class Meta:
        managed = False
        db_table = 'concatbook_v'

    def get_absolute_url(self):
        return reverse('book_detail', args=[self.bookid])

class ReviewV(models.Model):
    bookid = models.AutoField(db_column='BookID', primary_key=True)  # Field name made lowercase.
    title = models.CharField(db_column='Title', unique=True, max_length=40)  # Field name made lowercase.
    userid = models.IntegerField(db_column='UserID', primary_key=False)  # Field name made lowercase.
    stars = models.IntegerField(db_column='Stars', primary_key=False)  # Field name made lowercase.
    firstname = models.CharField(db_column='FirstName', max_length=50, primary_key=False)  # Field name made lowercase.
    description = models.CharField(db_column='Description', max_length=100, primary_key=False)  # Field name made lowercase.
    datetime = models.DateTimeField(db_column='DateTime', primary_key=False)  # Field name made lowercase.
    

    class Meta:
        managed = False
        db_table = 'reviews_v'

    def get_absolute_url(self):
        return reverse('review_detail', args=[self.bookid])