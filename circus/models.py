from django.db import models

class Show(models.Model):
    name = models.CharField(max_length=100)
    city = models.CharField(max_length=30)
    date = models.DateField()
    total_seats = models.IntegerField()
    left_seats = models.IntegerField()
    price = models.DecimalField(max_digits=5, decimal_places=2)
    gps_latitude = models.CharField(max_length=30)
    gps_longitude = models.CharField(max_length=30)
    
class Booking(models.Model):
    firstname = models.CharField(max_length=30)
    lastname = models.CharField(max_length=30)
    seats = models.IntegerField()
    paymentTime = models.DateField()
    show = models.ForeignKey(Show, on_delete=models.CASCADE)
    address = models.CharField(max_length=150)
    city = models.CharField(max_length=60)
    country = models.CharField(max_length=50)
