# Generated by Django 2.2.3 on 2019-07-17 07:56

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('circus', '0001_initial'),
    ]

    operations = [
        migrations.RenameModel(
            old_name='Shows',
            new_name='Show',
        ),
        migrations.RenameField(
            model_name='booking',
            old_name='shows',
            new_name='show',
        ),
    ]