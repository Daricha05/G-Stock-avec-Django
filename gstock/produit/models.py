from django.db import models


class Category(models.Model):
    nom = models.CharField(max_length=150)

    class Meta:
        verbose_name = "Category"
        verbose_name_plural = "Categories"

    def __str__(self) -> str:
        return self.nom


class Unite(models.Model):
    nom = models.CharField(max_length=100)

    def __str__(self) -> str:
        return self.nom


class Fournisseur(models.Model):
    nom = models.CharField(max_length=100)
    adress = models.CharField(max_length=100, null=True)
    phone = models.CharField(max_length=20)

    def __str__(self) -> str:
        return self.nom


class Produit(models.Model):
    nom = models.CharField(max_length=200)
    description = models.TextField(blank=True, null=True)
    prix = models.IntegerField()
    quantite = models.IntegerField()
    seuil_minimum = models.IntegerField(default=5, null=True, blank=True)
    date_creation = models.DateField(auto_now_add=True)
    category = models.ForeignKey(
        Category, on_delete=models.PROTECT, null=True, blank=True)
    unite = models.ForeignKey(
        Unite, on_delete=models.PROTECT, null=True, blank=True)
    fournisseur = models.ForeignKey(
        Fournisseur, on_delete=models.PROTECT, null=True, blank=True)
    disponible = models.BooleanField(default=True)

    def __str__(self) -> str:
        return self.nom
