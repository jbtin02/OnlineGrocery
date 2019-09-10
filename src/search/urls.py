from django.conf.urls import url

from .views import (
        
        search_product_list_view,
		
        )

urlpatterns = [
    url(r'^$', search_product_list_view, name='query'),
    url(r'^(?P<search_slug>[-\w]+)/$', search_product_list_view, name='search_product_list_by_category'),
   

]
