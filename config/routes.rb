Rails.application.routes.draw do
  root 'home_pages#index'

  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :address_books
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
