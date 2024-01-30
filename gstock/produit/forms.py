from django import forms
from .models import Produit, Category, Unite, Fournisseur


class ProductForm(forms.ModelForm):
    class Meta:
        model = Produit
        fields = ['nom', 'description', 'quantite',
                  'prix', 'seuil_minimum', 'category', 'unite', 'fournisseur']

        # Utilisation de widgets personnalisés pour certains champs
        widgets = {
            'nom': forms.TextInput(attrs={'class': 'form-control'}),
            'description': forms.Textarea(attrs={'class': 'form-control', 'rows': 3}),
            'prix': forms.NumberInput(attrs={'class': 'form-control'}),
            'quantite': forms.NumberInput(attrs={'class': 'form-control', 'min': '0'}),
            'seuil_minimum': forms.NumberInput(attrs={'class': 'form-control', 'min': '0'}),
            'category': forms.Select(attrs={'class': 'form-select'}),
            'unite': forms.Select(attrs={'class': 'form-select'}),
            'fournisseur': forms.Select(attrs={'class': 'form-select'}),
        }

        # Validation personnalisée pour le champ quantite
        def clean_quantite(self):
            quantite = self.cleaned_data['quantite']
            if quantite < 0:
                raise forms.ValidationError(
                    "La quantité doit être un nombre positif.")
            return quantite


class CategoryForm(forms.ModelForm):
    class Meta:
        model = Category
        fields = '__all__'

        widgets = {
            'nom': forms.TextInput(attrs={'class': 'form-control'}),
        }


class UniteForm(forms.ModelForm):
    class Meta:
        model = Unite
        fields = '__all__'

        widgets = {
            'nom': forms.TextInput(attrs={'class': 'form-control'}),
        }


class FournisseurForm(forms.ModelForm):
    class Meta:
        model = Fournisseur
        fields = '__all__'

        # widgets = {
        #     'nom': forms.TextInput(attrs={'class': 'form-control'}),
        #     'adress': forms.TextInput(attrs={'class': 'form-control'}),
        #     'phone': forms.TextInput(attrs={'class': 'form-control'}),
        # }
