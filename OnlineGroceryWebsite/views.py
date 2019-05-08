#Created file ang views.py[Hindi default]
from django.contrib.auth import authenticate, login, get_user_model

from django.http import HttpResponse, JsonResponse
from django.shortcuts import render, redirect

from .forms import ContactForm
from accounts.models import Contact
from django.views.generic import CreateView, FormView

from django.utils.http import is_safe_url
#category--------------------------------------------

# def category_page(request):
#     PostCategory = PostCategory(request.POST or None)
#     context = {
#             "title":"Category",
#             "content":"welcome categ",
#             "form": PostCategory
    
#         }
#     if PostCategory.is_valid():
#         print(PostCategory.cleaned_data)
    
# #     if request.method == "POST":
# #         #print(request.POST)
# #         print(request.POST.get('fullname'))
# #         print(request.POST.get('email'))
# #         print(request.POST.get('content'))
#     return render(request, "products/post_category.html", context)

#HOMEPAGE------------------------------------------
def home_page(request):
    # print(request.session.get("first_name", "Unknown"))
    # request.session['first_name']
    context = {
            "title":"",
            "content":"",
            
        }
    if request.user.is_authenticated():
        context["premium_content"] = "logged in"
    return render(request, "home_page.html", context)

def about_page(request):
    context = {
            "title":"About",
            "content":""
        }
    return render(request, "home_page.html", context)

#CONTACTPAGE------------------------------------------
User = get_user_model()
def contact_page(request):
    success_url = '/'
    contact_form = ContactForm(request.POST or None)
    context = {
            "title":"Contact",
            "content":"",
            "form": contact_form
    
        }

    next_ = request.GET.get('next')
    next_post = request.POST.get('next')
    # redirect_path = next_ or next_post or None



    redirect_path = next_ or next_post or None

    if contact_form.is_valid():
        print(contact_form.cleaned_data)
        fullname  = contact_form.cleaned_data.get("fullname")
        email  = contact_form.cleaned_data.get("email")
        contact_number  = contact_form.cleaned_data.get("contact_number")
        content  = contact_form.cleaned_data.get("content")
        new_user = Contact.objects.create(fullname=fullname, email=email, contact_number=contact_number, content=content)
        # if is_safe_url(redirect_path, request.get_host()):
        #     return redirect(redirect_path)
        # else:
        #     return redirect("/")

        # new_fullname = Contact.objects.create(fullname=fullname)
        # new_email = Contact.objects.create(email=email)
        # new_contact = Contact.objects.create(contact_number=contact_number)
        # new_content = Contact.objects.create(content=content)
        # print(new_user)
    
    # return render(request, "contact/view.html", context)
        if request.is_ajax():
            return JsonResponse({"message": "Thank you for your submission"})

    if contact_form.errors:
        errors = contact_form.errors.as_json()
        if request.is_ajax():
            return HttpResponse(errors, status=400, content_type='application/json')
    
#     if request.method == "POST":
#         #print(request.POST)
#         print(request.POST.get('fullname'))
#         print(request.POST.get('email'))
#         print(request.POST.get('content'))

    return render(request, "contact/view.html", context)


    # if form.is_valid():
    #     email       = form.cleaned_data.get("email")
    #     new_guest_email = GuestEmail.objects.create(email=email)
    #     request.session['guest_email_id'] = new_guest_email.id
    #     if is_safe_url(redirect_path, request.get_host()):
    #         return redirect(redirect_path)
    #     else:
    #         return redirect("/register/")
    # return redirect("/register/")

# class ContactView(CreateView):
#     form_class = ContactForm
#     template_name = 'contact/view.html'
#     success_url = '/'


#LOGINPAGE------------------------------------------
# def login_page(request):
#     form = LoginForm(request.POST or None)
#     context = {
#         "form": form
#     }
#     print("User logged in")
#     #print(request.user.is_authenticated())
#     if form.is_valid():
#         print(form.cleaned_data)
#         username  = form.cleaned_data.get("username")
#         password  = form.cleaned_data.get("password")
#         user = authenticate(request, username=username, password=password)
#         print(user)
#         #print(request.user.is_authenticated())
#         if user is not None:
#             #print(request.user.is_authenticated())
#             login(request, user)
#             # Redirect to a success page.
#             #context['form'] = LoginForm()
#             return redirect("/")
#         else:
#             # Return an 'invalid login' error message.
#             print("Error")

#     return render(request, "auth/login.html", context)

# #REGISTERPAGE------------------------------------------
# User = get_user_model()
# def register_page(request):
#     form = RegisterForm(request.POST or None)
#     context = {
#         "form": form
#         }
#     if form.is_valid():
#         print(form.cleaned_data)
#         username  = form.cleaned_data.get("username")
#         email  = form.cleaned_data.get("email")
#         password  = form.cleaned_data.get("password")
#         new_user = User.objects.create_user(username, email, password)
#         print(new_user)
#     return render(request, "auth/register.html", context)

#OLD------------------------------------------
def home_page_old(request):
    html_ = """
    <!doctype html>
    <html lang="en">
      <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    
        <title>Hello, world!</title>
      </head>
      <body>
        <div class = 'text-center'>
        <h1>Hello, world!</h1>
        </div>
    
        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
      </body>
    </html>
    """
 
    return HttpResponse(html_)