from django.db import models
from django.core.exceptions import ValidationError
from produit.models import Produit


class MouvementStock(models.Model):
    CHOIX = [
        ('in', 'Achat'),
        ('out', 'Vente')
    ]
    produit = models.ForeignKey(Produit, on_delete=models.PROTECT)
    quantite = models.IntegerField()
    type_transaction = models.CharField(max_length=10, choices=CHOIX)
    date_transaction = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return f"{self.produit} - {self.quantite} ({self.date_transaction})"
