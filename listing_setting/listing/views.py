from django.shortcuts import render

# Define views here
def home(request):
    return render(request, 'index.html')

def listing(request):
    return render(request, 'listing.html')

def listings(request):
    return render(request, 'listings.html')

def dashboard(request):
    return render(request, 'dashboard.html')

def wallet(request):
    return render(request, 'dashboard-wallet.html')

def reviews(request):
    return render(request, 'dashboard-reviews.html')

def my_listing(request):
    return render(request, 'dashboard-my-listings.html')

def bookmarks(request):
    return render(request, 'dashboard-bookmarks.html')

def bookings(request):
    return render(request, 'dashboard-bookings.html')

def add_listings(request):
    return render(request, 'dashboard-add-listing.html')

def profile(request):
    return render(request, 'dashboard-my-profile.html')

def logout(request):
    return render(request, 'index.html')
