# Generated by Django 4.0.5 on 2022-06-27 18:55

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('mainList', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='event',
            name='date_closeRegister',
            field=models.DateTimeField(blank=True, null=True, verbose_name='Дата конца регистрации'),
        ),
        migrations.AlterField(
            model_name='event',
            name='date_end',
            field=models.DateTimeField(blank=True, null=True, verbose_name='Дата конца соревнования'),
        ),
        migrations.AlterField(
            model_name='event',
            name='date_register',
            field=models.DateTimeField(blank=True, null=True, verbose_name='Дата начала регистрации'),
        ),
        migrations.AlterField(
            model_name='event',
            name='date_start',
            field=models.DateTimeField(blank=True, null=True, verbose_name='Дата начала соревнования'),
        ),
    ]
