from django.urls import path
from .views import ProduitDeleteView, CreateCategory, CreateUnite, CreateFournisseur
from .views import ProduitListView, ProduitCreateView, ProduitUpdateView

urlpatterns = [
    path('', ProduitListView, name='produit_list'),
    path('new/', ProduitCreateView, name='produit_new'),
    path('cat/', CreateCategory, name='cat_new'),
    path('unite/', CreateUnite, name='unite_new'),
    path('fournisseur/', CreateFournisseur, name='custom_new'),
    path('<int:pk>/edit/', ProduitUpdateView.as_view(), name='produit_edit'),
    path('<int:pk>/delete/', ProduitDeleteView, name='produit_delete'),
]
