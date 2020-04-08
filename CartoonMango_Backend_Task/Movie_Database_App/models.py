from django.db import models
from django_mysql.models import ListCharField
from django.db.models import CharField

# Create your models here.

class IMDB_Database(models.Model):
    title = models.CharField(max_length=200)
    plot_summary = models.CharField(max_length=50000)
    directors =  ListCharField(base_field=CharField(max_length=20),size=50,max_length=(50 * 21))
    writers = ListCharField(base_field=CharField(max_length=20),size=50,max_length=(50 * 21))
    stars = ListCharField(base_field=CharField(max_length=30),size=50,max_length=(50 * 31))
    rating = models.FloatField(max_length=10)

    def __str__(self):
        return self.title
