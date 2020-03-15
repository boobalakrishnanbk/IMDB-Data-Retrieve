from django.db import models

# Create your models here.

class IMDB_Database(models.Model):
    title = models.CharField(max_length=200)
    plot_summary = models.CharField(max_length=500)
    directors = models.CharField(max_length=5000)
    writers = models.CharField(max_length=5000)
    stars = models.CharField(max_length=5000)
    rating = models.FloatField(max_length=10)

    def __str__(self):
        return self.title
