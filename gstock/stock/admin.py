from django.contrib import admin
from .models import MouvementStock


@admin.register(MouvementStock)
class AdminStockTransaction(admin.ModelAdmin):
    list_display = ('produit', 'quantite',
                    'type_transaction', 'date_transaction',)
    search_fields = ('produit',)
    list_filter = ('date_transaction',)
    date_hierarchy = ('date_transaction')
