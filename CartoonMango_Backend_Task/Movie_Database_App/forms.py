from django import forms

class URL_GET(forms.Form):
    """docstring for URL_GET."""
    url = forms.CharField(label="URL ", max_length=100)
