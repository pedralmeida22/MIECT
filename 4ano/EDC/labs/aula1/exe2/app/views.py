from django.shortcuts import render
from django.http import HttpRequest, HttpResponse


# Create your views here.
def hello(request):
    return HttpResponse("Hello world!")


def numero(request, num):
    resp = "<html><body><h1>{}</h1></body></html>".format(num)
    return HttpResponse(resp)


def numerot(request, num):
    tparams = {
        'num_arg': num,
    }
    return render(request, 'numerot.html', tparams)


def sendinfo(request):
    assert isinstance(request, HttpRequest)
    if 'nome' in request.POST and 'idade' in request.POST:
        nome = request.POST['nome']
        idade = request.POST['idade']

        if nome and idade:
            return render(
                request,
                'send_results.html',
                {
                    'nome': nome,
                    'idade': idade,
                }
            )
        else:
            return render(
                request,
                'sendinfo.html',
                {
                    'error': True,
                }
            )
    else:
        return render(
            request,
            'sendinfo.html',
            {
                'error': False,
            }
        )
