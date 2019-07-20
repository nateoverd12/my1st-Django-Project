#/!\ find a way to install every dependencies bi pip

```python manage.py runserver 0.0.0.0:8001```
# go on website
# for the 1st time, go to /fixtures url and wait around a minute to get all datas and also:
```python manage.py migrate```
# if terminal ask to you about superuser, let's create it ; it'll be the admin informations for the admin interface
# go on 'Admin' button to connect as admin and then you're on admin interface

# 3DmapsDjango
Adding maps to your Django apps. The following steps will guide you through on how to add maps to your django projects. Along with,
displaying 3D buildings. I have used [Mapbox](https://www.mapbox.com/api-documentation/) api for this project.

# Sign-up for Mapbox

Head to the [Mapbox](https://www.mapbox.com/). Click on "Get started". Sign up for a free account. Once you have signed in,
Click the "JS Web" option. Then, choose "Use the Mapbox CDN" to install Mapbox GL JS. Once you have done that you will be provided with a access token, like this one "pk.eyJ1IjoIcGVuh29veCIsImEiOiJjampHNshreDkwbGZ5M3BxbXZkdDQ0dGdpIn1.-36WPGfz6NY90m3trPkNyw".

![2018-07-08 1](https://user-images.githubusercontent.com/30196830/42422235-dc232b4a-82ff-11e8-82e5-d6f6f54b4da8.png)

# Getting started
* Clone the repository.
* Create a virtual environment.

`python -m venv djangomaps`

* Activate the virtualenv

`.\Scripts\activate` (Windows users)

or

`source djangomaps/bin/activate` (mac users)

* This will install all the neccessary packages.

`pip install -r requirements.txt`

* After its done, cd into `src/maps`, open `views.py` and put the access token within the quotes.
  Go ahead and run the application.

```python
python manage.py runserver
```

* Go to localhost

![local](https://user-images.githubusercontent.com/30196830/42422925-f308a002-830d-11e8-82e7-61d62c8a0774.png)