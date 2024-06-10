from django.db import models

# Create your models here.

class Inscription(models.Model):
    name = models.CharField(max_length=100)
    email = models.EmailField()
    dob = models.DateField()
    image = models.ImageField(upload_to='Inscriptions/', null=True, blank=True)

    def __str__(self):
        return self.name
    