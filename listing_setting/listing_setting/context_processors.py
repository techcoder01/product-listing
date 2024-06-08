# myapp/context_processors.py
def is_dashboard(request):
    dashboard_urls = [
        'dashboard', 'wallet', 'reviews', 'my-listing', 
        'bookmarks', 'bookings', 'profile', 'add-listings'
    ]
    return {
        'is_dashboard': any(request.path.startswith(f'/{url}/') for url in dashboard_urls)
    }
