# Generated by Django 5.0.4 on 2024-06-10 11:55

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('myapp', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='inscription',
            name='image',
            field=models.ImageField(blank=True, null=True, upload_to='Inscriptions/'),
        ),
    ]