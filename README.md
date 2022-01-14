### Access the demo:
Visit: [audibledb.herokuapp.com](https://audibledb.herokuapp.com/)

### Instructions for Installation on Heroku (Recommended):
Use `git clone https://github.com/kostascc/AudibleDB-Exercise audible` to download a copy of this app, and open the root directory.

Run the commands below on Heroku CLI to create and publish the app.
```
# Create
heroku create audible

# Set ENV
heroku config:set -a audible DEBUG=false
heroku config:set -a audible DATABASE_NAME=<name of your database>
heroku config:set -a audible DATABASE_USER=<database user>
heroku config:set -a audible DATABASE_PASS=<database password>
heroku config:set -a audible DATABASE_HOST=<mysql host, without any protocols (e.g. mysql://) or ports (e.g. :3306)>

# Publish
git push heroku main
```

### Instructions for Installation on Linux/Windows:

Install Django:
```
pip install mysqlclient
pip install Django
```

Initialize the environment with a MySQL database:
```
export DEBUG=<[true|false]>
export DATABASE_USER=<database username>
export DATABASE_PASS=<database password>
export DATABASE_HOST=<mysql host, without any protocols (e.g. mysql://) or ports (:3306)>
export DATABASE_NAME=<database name>
export CSRF_TRUSTED_ORIGIN=<domain used to access this app>
```

Run the Django app:
```
python manage.py runserver 0.0.0.0:8000
```

