"""
URL configuration for projeto project.

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/5.0/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path
from django.http import HttpResponse

def cadastro(request):
    print("teste de Cadastro")
    return HttpResponse('<div class="container" style="display: flex; flex-direction: column; align-items: center; justify-content: center;"><h1>Cadastro</h1><form action=""><label for="email">Email</label><br><input type="text" name="email" id="email"><br><label for="senha">Senha</label><br><input type="text" name="senha" id="senha"><br><br><input type="button" value="Entrar"></form></div>')

def home(request):
    print("teste de Home")
    return HttpResponse("Home")

urlpatterns = [
    path('admin/', admin.site.urls),
    path('cadastro/', cadastro),
    path('', home),
]
