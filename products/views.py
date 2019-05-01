# from django.views import ListView
from django.http import Http404
from django.views.generic import ListView, DetailView
from django.shortcuts import render, get_object_or_404

from carts.models import Cart
# from .forms import CartAddProductForm
from .models import Product, Category


# class ProductListView(ListView):
#     template_name = "products/list.html"


#     def get_queryset(self, *args, **kwargs):
#         request = self.request
#         return Product.objects.all()

#master-------------------------------------------------------------------------------------------------------

def product_list_view(request, category_slug=None):
    category = None
    categories = Category.objects.filter(active=True)
    products = Product.objects.filter(active=True)


    if category_slug:
        category = get_object_or_404(Category, slug=category_slug)
        products = products.filter(category=category)
    # queryset = Product.objects.all()
    # context = {
    #     'object_list': queryset
    # }
    # return render(request, "products/list.html", context)
    return render(request, 'products/list.html', {'category':category,
                                                  'categories':categories,
                                                  'products':products})



    
#-----------------------------------------------------------------------------------------------------------
# class ProductListView(ListView):
#     template_name = "products/list.html"

#     # def get_context_data(self, *args, **kwargs):
#     #     context = super(ProductListView, self).get_context_data(*args, **kwargs)
#     #     print(context)
#     #     return context

#     def get_queryset(self, *args, **kwargs):
#         request = self.request
#         return Product.objects.all()


# def product_list_view(request):
#     queryset = Product.objects.all()
#     context = {
#         'object_list': queryset
#     }
#     return render(request, "products/list.html", context)

class product_detail(DetailView):
    queryset = Product.objects.all()
    template_name = "products/detail.html"

    def get_context_data(self, *args, **kwargs):
        context = super(product_detail, self).get_context_data(*args, **kwargs)
        cart_obj, new_obj = Cart.objects.new_or_get(self.request)
        context['cart'] = cart_obj
        return context

    def get_object(self, *args, **kwargs):
        request = self.request
        slug = self.kwargs.get('slug')
        #instance = get_object_or_404(Product, slug=slug, active=True)
        try:
            instance = Product.objects.get(slug=slug, active=True)
        except Product.DoesNotExist:
            raise Http404("Not found..")
        except Product.MultipleObjectsReturned:
            qs = Product.objects.filter(slug=slug, active=True)
            instance = qs.first()
        except:
            raise Http404("Uhhmmm ")
        return instance


def product_detail_view(request, pk=None, *args, **kwargs):
    instance = Product.objects.get_by_id(pk)
    if instance is None:
        raise Http404("Product doesn't exist")
    context = {
        'object': instance
    }
    return render(request, "products/detail.html", context)
#-----------------------------------------------------------------------------------------

# def product_detail(request, slug):
#     # context = super(product_detail, self).get_context_data(*args, **kwargs)
#     # cart_obj, new_obj = Cart.objects.new_or_get(self.request)
#     # context['cart'] = cart_obj

#     product = get_object_or_404(Product, slug=slug, active=True)
#     # cart_product_form = CartAddProductForm()
#     return render(request,
#                   'products/detail.html',
#                   {'product':product})

#-----------------------------------------------------------------------------------------

# def get_context_data(self, *args, **kwargs):
#         context = super(ProductDetailSlugView, self).get_context_data(*args, **kwargs)
#         cart_obj, new_obj = Cart.objects.new_or_get(self.request)
#         context['cart'] = cart_obj
#         return context


# def ProductDetailSlugView(request, id, slug):
#     product = get_object_or_404(Product, id=id, slug=slug, active=True)
#     # cart_product_form = CartAddProductForm()
#     return render(request,
#                   'products/detail.html',
#                   {'product':product})

# class ProductDetailSlugView(DetailView):
#     queryset = Product.objects.all()
#     template_name = "products/detail.html"

#     def get_object(self, *args, **kwargs):
#         request = self.request
#         slug = self.kwargs.get('slug')
#         #instance = get_object_or_404(Product, slug=slug, active=True)
#         try:
#             instance = Product.objects.get(slug=slug, active=True)
#         except Product.DoesNotExist:
#             raise Http404("Not found..")
#         except Product.MultipleObjectsReturned:
#             qs = Product.objects.filter(slug=slug, active=True)
#             instance = qs.first()
#         except:
#             raise Http404("Uhhmmm ")
#         return instance



# class ProductDetailView(DetailView):
#     #queryset = Product.objects.all()
#     template_name = "products/detail.html"

#     def get_context_data(self, *args, **kwargs):
#         context = super(ProductDetailView, self).get_context_data(*args, **kwargs)
#         print(context)
#         # context['abc'] = 123
#         return context

#     def get_object(self, *args, **kwargs):
#         request = self.request
#         pk = self.kwargs.get('pk')
#         instance = Product.objects.get_by_id(pk)
#         if instance is None:
#             raise Http404("Product doesn't exist")
#         return instance


# def product_detail_view(request, pk=None, *args, **kwargs):


#     instance = Product.objects.get_by_id(pk)
#     if instance is None:
#         raise Http404("Product doesn't exist")


#     context = {
#         'object': instance
#     }
#     return render(request, "products/detail.html", context)













#di na toh need
class ProductFeaturedListView(ListView):
    template_name = "products/list.html"

    def get_queryset(self, *args, **kwargs):
        request = self.request
        return Product.objects.all().featured()


class ProductFeaturedDetailView(DetailView):
    queryset = Product.objects.all().featured()
    template_name = "products/featured-detail.html"

#di na toh need



