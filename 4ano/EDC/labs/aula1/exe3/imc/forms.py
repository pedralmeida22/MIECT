from django import forms


class ImcForm(forms.Form):
    peso = forms.DecimalField(required=True)
    altura = forms.DecimalField(required=True)
