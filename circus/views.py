from django.shortcuts import redirect, render
from django.http import HttpResponseRedirect
from django.contrib.gis.geoip2 import GeoIP2
from .models import Show, Booking
from faker import Faker
# from ipware.ip import get_ip
from django.db.models import F
import random, requests, math


def home(request, page=1):
    # # ip = get_ip(request)
    # ip ='24.124.1.80'
    # if ip is not None:
    #     g = GeoIP2()
    #     coord = g.lat_lon(ip)
    #     all_shows = Show.objects.all()
    #     all_shows = sorted(all_shows, key=lambda show: distance_km(float(show.gps_latitude), float(show.gps_longitude), float(coord[0]),float(coord[1])))
    # else:
        # all_shows = Show.objects.order_by("date")
    all_shows = Show.objects.order_by("date")
    shows = all_shows[(page-1)*10:(page*10)]
    count = len(all_shows)/10
    total = count if count == int(count) else int(count)+1
    pages = {'prev': page-1,'next': page+1}
    return render(request, 'home.html', {"shows": shows, "pages": pages, "total": total})

def payment(request, id):
    show = Show.objects.get(id=id)
    return render(request, 'payment.html', {"show": show})



def degreesToRadians(degrees):
    return degrees * math.pi / 180

def distance_km(lat1, lon1, lat2, lon2):
  earthRadiusKm = 6371

  dLat = degreesToRadians(lat2-lat1)
  dLon = degreesToRadians(lon2-lon1)

  lat1 = degreesToRadians(lat1)
  lat2 = degreesToRadians(lat2)

  a = math.sin(dLat/2) * math.sin(dLat/2) + math.sin(dLon/2) * math.sin(dLon/2) * math.cos(lat1) * math.cos(lat2) 
  c = 2 * math.atan2(math.sqrt(a), math.sqrt(1-a)) 
  return earthRadiusKm * c



def delete_everything(*argv):
    for arg in argv:
        arg.objects.all().delete()

def loadFixtures(request):
    # delete_everything(Booking)
    delete_everything(Booking,Show)
    fake = Faker('fr_FR')
    for i in range(100):
        City = random.sample(french_cities,1)[0]
        r = requests.get('http://photon.komoot.de/api/?q='+City.lower())
        datas = r.json()
        c=0
        country=datas['features'][c]['properties']['country']
        length = len(datas["features"])
        while country!='France' and c<length:
            country=datas['features'][c]
            c+=1
        if(c==length):
            continue
        coord=datas['features'][c]['geometry']['coordinates']
        places = int(random.uniform(100,200))
        show = Show.objects.create(
            name='Cirque '+fake.company(),
            city=City,
            total_seats=places,
            left_seats=places,
            date=fake.date_between(start_date="today", end_date="+1y"),
            price=int(random.uniform(5,40)*100)/100,
            gps_longitude=coord[0],
            gps_latitude=coord[1],
        )
    for j in range(1000):
        target_show = random.choice(Show.objects.all())
        use_seats = random.randint(1,10)
        actual_left = getattr(target_show, 'left_seats')
        if actual_left>use_seats:
            book = Booking.objects.create(
                firstname = fake.first_name(),
                lastname = fake.last_name(),
                seats = use_seats,
                paymentTime = fake.date_between(start_date="-1y", end_date="today"),
                show = target_show,
                address = fake.address(),
                city = fake.city(),
                country = fake.country(),
            )
            target_show.left_seats=(actual_left-use_seats)
            target_show.save(update_fields=['left_seats'])
    return HttpResponseRedirect("/page/1")

french_cities = ('Paris',
                'Lyon',
                'Marseille',
                'Toulouse',
                'Lille',
                'Bordeaux',
                'Nice',
                'Nantes',
                'Strasbourg',
                'Rennes',
                'Grenoble',
                'Rouen',
                'Toulon',
                'Montpellier',
                'Lens',
                'Avignon',
                'Tours',
                'Nancy',
                'Orléans',
                'Caen',
                'Angers',
                'Metz',
                'Dijon',
                'Béthune',
                'Valenciennes',
                'Reims',
                'Brest',
                'Perpignan',
                'Amiens',
                'Le Havre',
                'Bayonne',
                'Mulhouse',
                'Limoges',
                'Nîmes',
                'Dunkerque',
                'Poitiers',
                'Besançon',
                'Pau',
                'Annecy')