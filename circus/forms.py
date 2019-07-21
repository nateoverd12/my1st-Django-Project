from django.forms import ModelForm
from django import forms
from .models import Booking

# Create the form class.
class BookingForm(ModelForm):
    class Meta:
        model = Booking
        fields = ('firstname', 'lastname', 'address', 'city', 'country', 'seats')
        widgets = {
            'seats': forms.NumberInput(attrs={'min': 1}),
        }