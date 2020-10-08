from django.shortcuts import render
from django.http import HttpRequest, HttpResponse
from django import forms


# Create your views here.
def home(request):
    title = "Cálculo IMC"
    return render(request, 'base.html', {'title': title})

# work in progress
def getinfo(request):
    assert isinstance(request, HttpRequest)

    # form = forms.Form(request.POST)
    #
    # if form.is_valid():
    #     # calcular imc -> imc = peso/altura**2
    #     peso = request.POST.get('peso', -1)
    #     altura = request.POST.get('altura', -1)
    #     imc = peso / (altura * altura)

    if 'altura' in request.POST and 'peso' in request.POST:
        # calcular imc -> imc = peso/altura**2
        peso = request.POST['peso']
        altura = request.POST['altura']
        imc = peso / (altura * altura)

        if peso and altura:
            return render(request, "show_result.html", {'imc': imc})
        else:
            return render(request, "getinfo.html")
    else:
        return render(request, "getinfo.html")
