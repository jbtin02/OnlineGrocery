from django import forms

from .models import Address

BRGY_TYPES = (
    ('brgyProk', 'BrgyProk'),
    ('brgyGis', 'BrgyGis'),
)
class AddressForm(forms.ModelForm):
    # billing_profile         = forms.ForeignKey(attrs={"class": "form-control", "placeholder": "Your Address"})
    address_line_1          = forms.ChoiceField(choices=BRGY_TYPES,widget=forms.Select(attrs={"name": "select_0","class": "form-control"}))
    address_line_2          = forms.CharField(required=False,widget=forms.TextInput(attrs={"class": "form-control", "placeholder": "Your Second Address(Optional)"}))
    city                    = forms.CharField(widget=forms.TextInput(attrs={"class": "form-control", "placeholder": "Your City"}))
    country                 = forms.CharField(widget=forms.TextInput(attrs={"class": "form-control", "placeholder": "Your Country"}))
    province                = forms.CharField(widget=forms.TextInput(attrs={"class": "form-control", "placeholder": "Your Province"}))                    
    contact_number          = forms.CharField(widget=forms.TextInput(attrs={"class": "form-control", "placeholder": "Your Contact Number"}))
    postal_code             = forms.CharField(widget=forms.TextInput(attrs={"class": "form-control", "placeholder": "Your Postal Code"}))
    
# widget=forms.TextInput(attrs={"class": "form-control", "placeholder": "Your Second Address(Optional)"})
# choices=BRGY_TYPES
# widget=forms.TextInput(attrs={"class": "form-control", "placeholder": "Your Address"})
    class Meta:
        model = Address
        fields = [
            #'billing_profile',
            #'address_type',
            'address_line_1',
            'address_line_2',
            'city',
            'country',
            'province',
            'contact_number',
            'postal_code'
        ]
    # def clean_address2(self):
    #     return self.cleaned_data['address_line_2'] or None