# go on website
# for the 1st time, go to /fixtures url and wait around a minute to get all datas and also:
```python manage.py migrate```

# Getting started
* Clone the repository.
* Create a virtual environment (for instance named: 'myvenv')

`python -m venv myvenv`

* Activate the virtualenv

`.\Scripts\activate` (Windows users)

or

`source myvenv/bin/activate` (mac and linux users)

* This will install all the neccessary packages.

`pip install -r requirements.txt`

* Open and complete my1stdjangoproject/settings.py with your db infos (I'm using mysql but you can change to something else) from lines 79 to 83

* Go ahead and run the application.

```python
python manage.py runserver
```

* Go to localhost

![local](https://user-images.githubusercontent.com/30196830/42422925-f308a002-830d-11e8-82e7-61d62c8a0774.png)

* Admin tricks: 

if terminal ask to you about superuser, let's create it ; it'll be the admin informations for the admin interface
go on 'Admin' button to connect as admin and then you're on admin interface