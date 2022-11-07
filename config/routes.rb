Rails.application.routes.draw do

  root 'book_apps#index'
  resources :book_apps

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
