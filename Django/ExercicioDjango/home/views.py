from django.shortcuts import render

# Create your views here.
def home(request):
    print("Home")
    return render(request, 'home.html')


def engenharia(request):
    print("Engenharia")
    return render(request, 'engenharia.html')


def producao(request):
    print("Produção")
    return render(request, 'producao.html')


def controle(request):
    print("Controle de Qualidade")
    return render(request, 'controle.html')


def expedicao(request):
    print("Expedição")
    return render(request, 'expedicao.html')