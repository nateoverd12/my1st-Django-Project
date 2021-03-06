# Generated by Django 2.2.3 on 2019-07-17 07:45

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Shows',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=100)),
                ('city', models.CharField(max_length=30)),
                ('date', models.DateField()),
                ('price', models.DecimalField(decimal_places=2, max_digits=5)),
                ('gps_latitude', models.CharField(max_length=30)),
                ('gps_longitude', models.CharField(max_length=30)),
            ],
        ),
        migrations.CreateModel(
            name='Booking',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('firstname', models.CharField(max_length=30)),
                ('lastname', models.CharField(max_length=30)),
                ('seats', models.IntegerField()),
                ('paymentTime', models.DateField()),
                ('address', models.CharField(max_length=50)),
                ('city', models.CharField(max_length=60)),
                ('country', models.CharField(max_length=50)),
                ('shows', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='circus.Shows')),
            ],
        ),
    ]
