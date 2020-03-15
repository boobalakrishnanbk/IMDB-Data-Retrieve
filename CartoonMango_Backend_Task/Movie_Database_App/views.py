from django.shortcuts import render
from django.http import HttpResponse
from .forms import URL_GET
from imdb import IMDb
from .models import IMDB_Database
# Create your views here.

def home(response):
    count = 0
    if response.method == 'POST':
        url_form = URL_GET(response.POST)
        if url_form.is_valid():
            url = url_form.cleaned_data["url"]
            temp = url.split('/')
            url_id = temp[4]
            final_url_id = url_id[2:]

            imdb_instance = IMDb()
            movie_details = imdb_instance.get_movie(int(final_url_id))
            movie_title = movie_details['title']
            movie_summary = movie_details['plot outline']

            writers = movie_details['writers']
            movie_writers = ""
            for sample in writers:
                movie_writers += str(sample)+','

            directors = movie_details['directors']
            movie_directors = ""
            for sample in directors:
                movie_directors += sample['name']+','

            cast = movie_details['cast']
            movie_cast = ""
            for sample in cast:
                movie_cast +=sample['name']+','

            movie_rating = movie_details['rating']

            database_instance = IMDB_Database(title=movie_title,plot_summary=movie_summary,directors=movie_directors,writers=movie_writers,stars=movie_cast,rating=movie_rating)
            database_instance.save()

            count = 1
            return render(response,'home.html',{"title":movie_title,"summary":movie_summary,"directors":movie_directors,"writers":movie_writers,"stars":movie_cast,"rating":movie_rating,"image_url":movie_details['full-size cover url'],"output":count,"url_get":url_form})    else:
        url_form = URL_GET()
    return render(response,'home.html',{"url_get":url_form,"output":count})
