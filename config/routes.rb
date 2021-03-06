Rails.application.routes.draw do
  #Root should route to log-in/sign-up.
  resources :items
  resources :categories
  #possibly eventually nested items show and a cateogory show page
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end



# ROUTES
# User: new, create, edit, update, show, destroy
# Pantry:
# Item: new, create, edit, update, destroy
# Category: index (with items), show (with items), new, create, update  (no edit view - edited at item level)
