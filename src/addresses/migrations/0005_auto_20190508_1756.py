# -*- coding: utf-8 -*-
# Generated by Django 1.11.4 on 2019-05-08 09:56
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('addresses', '0004_auto_20190506_2257'),
    ]

    operations = [
        migrations.AlterField(
            model_name='address',
            name='address_line_1',
            field=models.CharField(choices=[('brgyProk', 'BrgyProk'), ('brgyGis', 'BrgyGis')], max_length=120),
        ),
    ]
