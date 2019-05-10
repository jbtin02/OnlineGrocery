import math

from decimal import Decimal

from django.conf import settings
from django.db import models
from django.db.models.signals import pre_save, post_save, m2m_changed


from products.models import Product


User = settings.AUTH_USER_MODEL


class CartManager(models.Manager):
    def new_or_get(self, request):
        cart_id = request.session.get("cart_id", None)
        qs = self.get_queryset().filter(id=cart_id)
        if qs.count() == 1:
            new_obj = False
            cart_obj = qs.first()
            if request.user.is_authenticated() and cart_obj.user is None:
                cart_obj.user = request.user
                cart_obj.save()
        else:
            cart_obj = Cart.objects.new(user=request.user)
            new_obj = True
            request.session['cart_id'] = cart_obj.id
        return cart_obj, new_obj

    def new(self, user=None):
        user_obj = None
        if user is not None:
            if user.is_authenticated():
                user_obj = user
        return self.model.objects.create(user=user_obj)

# class CartItem(models.Model):
#     product     = models.ForeignKey(Product)
#     quantity    = models.IntegerField(default=1)
#     updated     = models.DateTimeField(auto_now=True)
#     timestamp   = models.DateTimeField(auto_now_add=True)

#     def __str__(self):
#         return self.product.title


class Cart(models.Model):
    # items       = models.ManyToManyField(CartItem, null=True, blank=True)
    user        = models.ForeignKey(User, null=True, blank=True)
    products    = models.ManyToManyField(Product, blank=True)
    subtotal    = models.DecimalField(default=0.00, max_digits=65, decimal_places=2)
    total       = models.DecimalField(default=0.00, max_digits=65, decimal_places=2)
    updated     = models.DateTimeField(auto_now=True)
    timestamp   = models.DateTimeField(auto_now_add=True)

    objects = CartManager()

    def __str__(self):
        return str(self.id)

#m2m
def m2m_changed_cart_receiver(sender, instance, action, *args, **kwargs):
    if action == 'post_add' or action == 'post_remove' or action == 'post_clear':
        products = instance.products.all()
        total = 0
        for x in products:
            total += x.price
        if instance.subtotal != total:
            instance.subtotal = total
            instance.save()

m2m_changed.connect(m2m_changed_cart_receiver, sender=Cart.products.through)




def pre_save_cart_receiver(sender, instance, *args, **kwargs):
    if instance.subtotal > 0:
        instance.total = Decimal(instance.subtotal) * Decimal(1.08) # 8% tax
        # new_total = math.fsum([instance.total]) --dmo na toh kelangan kasi di nmn need ang fsum kasi nagaccept naman ang decimal to decimal



        # eto ung pang fix sa maraming decimals pag di ka aunthenticated tas nagAdd to cart ka tas naglogin at tumingin sa cart
        
        # formatted_total = format(instance.total, '.2f')
        # instance.total = formatted_total
      
      # end of bug price total


        # return instance.total
        # instance.total = Decimal(instance.subtotal) * Decimal(1.08) # 8% tax
    else:
        instance.total = 0.00
pre_save.connect(pre_save_cart_receiver, sender=Cart)




