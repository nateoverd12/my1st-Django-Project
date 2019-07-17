from django.urls import path

from . import views

urlpatterns = [
    path('page/<int:page>', views.home, name="home"),
    path('fixtures', views.loadFixtures, name="load_fixtures"),
    path('book/<int:id>', views.payment, name="booking"),
]
