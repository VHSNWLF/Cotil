from django.shortcuts import render, redirect
from django.http import HttpResponse
from .models import Inscription
# Create your views here.

def index(request):
    return render(request, 'index.html')

def signup (request):
    if request.method == 'POST':
        name = request.POST['name']
        email = request.POST['email']
        dob = request.POST['dob']
        image = request.FILES.get('image')
        Inscription.objects.create(name=name, email=email,dob=dob, image=image)
        return redirect ('view_inscriptions')
    return render(request, 'signup.html')

def view_inscriptions(request):
    inscriptions = Inscription.objects.all()
    return render(request, 'view_inscriptions.html', {'inscriptions': inscriptions})