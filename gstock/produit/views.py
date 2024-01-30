from django.shortcuts import redirect, render
from django.contrib.auth.decorators import login_required
from django.views.generic import UpdateView
from django.urls import reverse_lazy
from .models import Produit, Fournisseur
from .forms import ProductForm, CategoryForm, UniteForm, FournisseurForm


@login_required(login_url='login')
def ProduitListView(request):
    # Recuperation de tout les donnée disponible dans le produit
    produits = Produit.objects.filter(disponible=True)
    return render(request, 'produit/produit_list.html', {'produits': produits})


@login_required(login_url='login')
def CreateCategory(request):
    form = CategoryForm()
    if request.method == 'POST':
        form = CategoryForm(request.POST)
        if form.is_valid():
            form.save()
            return redirect('produit_new')
        else:
            form = CategoryForm()

    return render(request, 'produit/produit_form.html', {'form': form})


@login_required(login_url='login')
def CreateUnite(request):
    form = UniteForm()
    if request.method == 'POST':
        form = UniteForm(request.POST)
        if form.is_valid():
            form.save()
            return redirect('produit_new')
        else:
            form = UniteForm()

    return render(request, 'produit/produit_form.html', {'form': form})


@login_required(login_url='login')
def CreateFournisseur(request):
    if request.method == 'POST':
        nom = request.POST.get('nom')
        adress = request.POST.get('adress')
        phone = request.POST.get('phone')

        new_fournisseur = Fournisseur.objects.create(
            nom=nom, adress=adress, phone=phone)
        new_fournisseur.save()
        return redirect('produit_new')

    return render(request, 'produit/produit_form.html')


@login_required(login_url='login')
def ProduitCreateView(request):
    form = ProductForm()
    if request.method == 'POST':
        form = ProductForm(request.POST)
        if form.is_valid():  # Validation de formulaire
            form.save()
            return redirect('produit_list')
        else:
            form = ProductForm()
    return render(request, 'produit/produit_form.html', {'form': form})


class ProduitUpdateView(UpdateView):
    model = Produit
    template_name = 'produit/produit_form.html'
    fields = ['nom', 'description', 'quantite',
              'prix', 'seuil_minimum', 'category', 'unite', 'fournisseur']
    success_url = reverse_lazy('produit_list')


@login_required(login_url='login')
def ProduitDeleteView(request, pk):
    produit = Produit.objects.get(pk=pk)  # Recupération ID produit
    produit.disponible = False
    produit.save()
    return redirect('produit_list')
