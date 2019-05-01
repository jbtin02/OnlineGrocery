from django.contrib import admin

# Register your models here.
from .models import Product, Category

class CategoryAdmin(admin.ModelAdmin):
	list_display = ('title', 'slug')
	prepopulated_fields = {'slug': ('title',)}
admin.site.register(Category,CategoryAdmin)

class ProductAdmin(admin.ModelAdmin):
	list_display = ['__str__', 'slug']
	class Meta:
		model = Product

admin.site.register(Product, ProductAdmin)
