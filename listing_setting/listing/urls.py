from django.urls import path
from . import views

# Create your views here.
urlpatterns = [
    path('', views.home, name='home'),
    path('listing/', views.listing, name='listing'),
    path('listings/', views.listings, name='listings'),
    path('dashboard/', views.dashboard, name='dashboard'),
    path('wallet/', views.wallet, name='wallet'),
    path('reviews/', views.reviews, name='reviews'),
    path('my-listing/', views.my_listing, name='my-listing'),
    path('bookmarks/', views.bookmarks, name='bookmarks'),
    path('bookings/', views.bookings, name='bookings'),
    path('profile/', views.profile, name='profile'),
    path('add-listings/', views.add_listings, name='add-listings'),
    path('logout/', views.logout, name='logout'),
]