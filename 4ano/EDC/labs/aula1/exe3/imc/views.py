from django.shortcuts import render
from django.http import HttpRequest, HttpResponse
from .forms import ImcForm


# functions
def get_message(imc):
    if imc < 18.5:
        return "Abaixo do peso ideal"
    elif 18.5 <= imc < 25:
        return "Peso normal"
    elif 25 <= imc < 30:
        return "Excesso de peso"
    elif 30 <= imc < 35:
        return "Obesidade (grau 1)"
    elif 35 <= imc < 40:
        return "Obesidade (grau 2)"
    elif imc > 40:
        return "Obesidade (grau 3)"


# Create your views here.
def home(request):
    title = "Cálculo IMC"
    return render(request, 'base.html', {'title': title})


def getinfo(request):
    assert isinstance(request, HttpRequest)

    if 'altura' in request.POST and 'peso' in request.POST:
        # calcular imc -> imc = peso/altura**2
        peso = int(request.POST['peso'])
        altura = int(request.POST['altura']) / 100  # dividir por 100 porque altura é em cm
        imc = peso / (altura * altura)
        imc = round(imc, 2)

        if peso and altura:
            return render(request, "show_result.html", {'imc': imc, 'message': get_message(imc)})
        else:
            return render(request, "getinfo.html", {'error': True})
    else:
        return render(request, "getinfo.html", {'error': False})


def getinfo2(request):
    form = ImcForm()

    if request.method == 'POST':
        form = ImcForm(request.POST)
        if form.is_valid():
            # calcular imc -> imc = peso/altura**2
            peso = int(form.cleaned_data['peso'])
            altura = int(form.cleaned_data['altura']) / 100
            imc = peso / (altura * altura)
            imc = round(imc, 2)

            return render(request, "show_result.html", {'imc': imc, 'message': get_message(imc)})
        else:
            return render(request, 'getinfo2.html', {'error': True, 'form': form})

    return render(request, "getinfo2.html", {'error': False, 'form': form})
