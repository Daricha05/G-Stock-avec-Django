from django import forms
from .models import MouvementStock


class TransactionForm(forms.ModelForm):
    class Meta:
        model = MouvementStock
        fields = ['produit', 'quantite', 'type_transaction']

        # Utilisation de widgets personnalisés pour certains champs
        widgets = {
            'produit': forms.Select(attrs={'class': 'form-select'}),
            'quantite': forms.NumberInput(attrs={'class': 'form-control', 'min': '1'}),
            'type_transaction': forms.Select(attrs={'class': 'form-select'}),
        }

    # def __init__(self, *args, **kwargs):
    #     produits_disponibles = kwargs.pop('produits_disponibles')
    #     super(TransactionForm, self).__init__(*args, **kwargs)

    #     if produits_disponibles is not None:
    #         self.fields['produit'].queryset = produits_disponibles
