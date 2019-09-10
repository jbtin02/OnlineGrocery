
from django.http import Http404
from django.shortcuts import render, get_object_or_404


from products.models import Product, Category

def search_product_list_view(request, search_slug=None):
    category = None
    categories = Category.objects.all()
    # print(request.GET)
    method_dict = request.GET
    all_items = Product.objects.all()
    query = method_dict.get('q', [all_items])

    # lookups = Q(title__icontains=query) | Q(description=query)	 	#original
    # products = Product.objects.filter(lookups).distinct()				#original
    products = Product.objects.search(query)


    if search_slug:
        category = get_object_or_404(Category, slug=search_slug)
        products = products.filter(category=category)
    # queryset = Product.objects.all()
    # context = {
    #     'object_list': queryset
    # }
    # return render(request, "products/list.html", context)
    return render(request, 'search/view.html', {'category':category,
                                                  'categories':categories,
                                                  'products':products})


# ?q=beverages

# def search_product_list_view(request, search_slug=None):
#     category = None
#     categories = Category.objects.all()
#     query = request.GET.get('q')
#     products = Product.objects.filter(active=True, title__icontains=query)
#     # search = products

#     if search_slug:
#         category = get_object_or_404(Category, slug=search_slug)
#         products = products.filter(category=category, products=products)
#         # search = products
#         # search = request.GET.get('q')

#     # queryset = Product.objects.all()
#     # context = {
#     #     'object_list': queryset
#     # }
#     # return render(request, "products/list.html", context)
#     return render(request, 'products/list.html', {'category':category,
#                                                   'categories':categories,
#                                                   'products':products})