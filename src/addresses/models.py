from django.db import models

from billing.models import BillingProfile

ADDRESS_TYPES = (
    ('billing', 'Billing'),
    ('shipping', 'Shipping'),
)

BRGY_TYPES = (
    ('brgyProk', 'BrgyProk'),
    ('brgyGis', 'BrgyGis'),
)

class Address(models.Model):
    billing_profile = models.ForeignKey(BillingProfile)
    address_type    = models.CharField(max_length=120, choices=ADDRESS_TYPES)
    address_line_1  = models.CharField(max_length=120, choices=BRGY_TYPES)
    address_line_2  = models.CharField(max_length=120, null=True, blank=True)
    city            = models.CharField(max_length=120, default='Biñan')
    country         = models.CharField(max_length=120, default='Philippines')
    province        = models.CharField(max_length=120)
    contact_number  = models.CharField(max_length=120)
    postal_code     = models.CharField(max_length=120)

    def __str__(self):
        return str(self.billing_profile)

    def get_address(self):
        return "{line1}\n{line2}\n{city}\n{state}, {contact_no}\n{postal}\n{country}".format(
                line1 = self.address_line_1,
                line2 = self.address_line_2 or "",
                city = self.city,
                state = self.province,
                postal= self.postal_code,
                contact_no = self.contact_number,
                country = self.country
            )




