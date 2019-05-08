from django import forms

from .models import Address

class AddressForm(forms.ModelForm):
    # billing_profile         = forms.ForeignKey(attrs={"class": "form-control", "placeholder": "Your Address"})
    address_line_1          = forms.CharField(widget=forms.TextInput(attrs={"class": "form-control", "placeholder": "Your Address"}))
    address_line_2          = forms.CharField(required=False,widget=forms.TextInput(attrs={"class": "form-control", "placeholder": "Your Second Address(Optional)"}))
    city                    = forms.CharField(widget=forms.TextInput(attrs={"class": "form-control", "placeholder": "Your City"}))
    country                 = forms.CharField(widget=forms.TextInput(attrs={"class": "form-control", "placeholder": "Your Country"}))
    province                = forms.CharField(widget=forms.TextInput(attrs={"class": "form-control", "placeholder": "Your Province"}))                    
    contact_number          = forms.CharField(widget=forms.TextInput(attrs={"class": "form-control", "placeholder": "Your Contact Number"}))
    postal_code             = forms.CharField(widget=forms.TextInput(attrs={"class": "form-control", "placeholder": "Your Postal Code"}))
    
# widget=forms.TextInput(attrs={"class": "form-control", "placeholder": "Your Second Address(Optional)"})

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
    def clean_address2(self):
        return self.cleaned_data['address_line_2'] or None