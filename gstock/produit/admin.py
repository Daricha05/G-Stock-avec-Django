from django.contrib import admin
from .models import Category, Fournisseur, Produit, Unite


class AdminCategory(admin.ModelAdmin):
    list_display = ('nom',)


class AdminUnite(admin.ModelAdmin):
    list_display = ('nom',)


class AdminFournisseur(admin.ModelAdmin):
    list_display = ('nom', 'adress', 'phone')
    search_fields = ('nom', 'adress')


class AdminProduit(admin.ModelAdmin):
    list_display = ('nom', 'description', 'prix',
                    'quantite', 'seuil_minimum', 'unite', 'category', 'fournisseur')
    list_filter = ('date_creation', 'category',)
    date_hierarchy = 'date_creation'
    search_fields = ('nom', 'category', 'prix')


admin.site.register(Category, AdminCategory)
admin.site.register(Unite, AdminUnite)
admin.site.register(Fournisseur, AdminFournisseur)
admin.site.register(Produit, AdminProduit)
