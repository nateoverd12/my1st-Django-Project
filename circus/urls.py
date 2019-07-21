from django.urls import path

from . import views

urlpatterns = [
    path('', views.init, name="initpage"),
    path('autour-de-moi', views.geoloc, name="geoloc")
    path('page/<int:page>', views.home, name="home"),
    path('fixtures', views.loadFixtures, name="load_fixtures"),
    path('book/<int:id>', views.payment, name="booking"),
]
