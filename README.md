# Getting started
* Clone the repository.
* Create a virtual environment (for instance, named: 'myvenv')

`python -m venv myvenv`

* Activate the virtualenv

`.\Scripts\activate` (Windows users)

or

`source myvenv/bin/activate` (mac and linux users)

* This will install all the neccessary packages.

`pip install -r requirements.txt`

* Open and complete my1stdjangoproject/settings.py with your db infos (I'm using mysql but you can change to something else) from lines 79 to 83
 
* Fill database :

```python manage.py makemigrations``` creates migration files based on your models

```python manage.py migrate``` will create the tables in your db based on the migration files created

then the terminal might asking you about a superuser: just create it and you'll be able to use the admin interface.
If you don't do it now, you'll just have to write:
```python manage.py createsuperuser``` (will create a superuser for your application in the database)

Then, to get fakes but coherent datas, either go on /fixtures url (it'll take some minutes to get all datas due to one api), or source/import the fixtures.sql file.

* Go ahead and run the application.

```python
python manage.py runserver
```

* Go to localhost

![local](https://user-images.githubusercontent.com/30196830/42422925-f308a002-830d-11e8-82e7-61d62c8a0774.png)