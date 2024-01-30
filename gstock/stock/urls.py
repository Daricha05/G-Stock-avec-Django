from django.urls import path
from .views import StockListView, StockCreateView

urlpatterns = [
    path('', StockListView, name='stock_list'),
    path('new/', StockCreateView, name='stock_new'),
]
