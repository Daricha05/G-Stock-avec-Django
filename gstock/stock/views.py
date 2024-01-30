from django.shortcuts import redirect, render
from django.contrib.auth.decorators import login_required
from django.contrib import messages
from .models import MouvementStock
from .forms import TransactionForm
from produit.models import Produit


@login_required(login_url='login')
def StockListView(request):
    stocks = MouvementStock.objects.all()
    produits = Produit.objects.filter(disponible=True)
    context = {
        'produits': produits,
        'stocks': stocks
    }
    return render(request, 'stock/stock_list.html', context)


@login_required(login_url='login')
def StockCreateView(request):
    stocks = MouvementStock.objects.all()
    form = TransactionForm()

    # Filtre des produits disponibles
    # produits_disponibles = Produit.objects.filter(disponible=True)

    if request.method == 'POST':
        form = TransactionForm(request.POST)
        if form.is_valid():
            transaction = form.save(commit=False)

            # Condition pour la sortie de stock
            if transaction.type_transaction == 'out' and transaction.quantite > transaction.produit.quantite:
                messages.error(
                    request, f"Quantité insuffisante pour le produit {transaction.produit.nom}. La quantité disponible est {transaction.produit.quantite}")
                return redirect('stock_list')

            # Condition pour la transaction de stock
            if transaction.type_transaction == 'in':
                transaction.produit.quantite += transaction.quantite
                messages.success(
                    request, f"Vous avez entré {transaction.quantite} quantité de stock pour le produit {transaction.produit.nom}")
            else:
                transaction.produit.quantite -= transaction.quantite
                messages.success(
                    request, f"Vous avez sorti {transaction.quantite} quantité de stock pour le produit {transaction.produit.nom}")

            transaction.produit.save()

            # Condition pour la rupture de stock
            if transaction.produit.quantite <= transaction.produit.seuil_minimum:
                messages.error(
                    request, f"Rupture de stock pour le produit {transaction.produit.nom} - reste {transaction.produit.quantite}")

            transaction.save()

            return redirect('stock_list')

    return render(request, 'stock/stock_form.html', {'form': form, 'stocks': stocks})
