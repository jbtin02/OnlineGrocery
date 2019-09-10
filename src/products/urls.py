from django.conf.urls import url

from .views import (
        # ProductListView, 
        # ProductDetailSlugView, 
        product_list_view,
		product_detail
        # product_list_view_last
        )

urlpatterns = [
    # url(r'^$', ProductListView.as_view(), name='list'),
    # url(r'^(?P<category_slug>[-\w]+)/$', product_list_view_last, name='product_list_by_category'),

    url(r'^$', product_list_view, name='list'),
    url(r'^(?P<category_slug>[-\w]+)/$', product_list_view, name='product_list_by_category'),
    # url(r'^(?P<slug>[\w-]+)/$', ProductDetailSlugView.as_view(), name='detail'),
    # url(r'^(?P<id>\d+)/(?P<detail_slug>[-\w]+)/$', product_detail, name='detail'),
    url(r'^products/(?P<slug>[-\w]+)/$', product_detail.as_view(), name='detail'),


]
