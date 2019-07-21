from django.forms import ModelForm
from .models import Booking

# Create the form class.
class BookingForm(ModelForm):
    class Meta:
        model = Booking
        fields = ('firstname', 'lastname', 'seats', 'address', 'city', 'country')