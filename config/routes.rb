Rails.application.routes.draw do

<<<<<<< HEAD
=======
 

>>>>>>> 74b66ed9a430070f96230dd4b0b4b9470dc44727
  get 'static_pages/about_us'

  get 'static_pages/our_services'


  resources :testimonies, only: [:index]
  resources :portofolios,  only: [:index, :show]
<<<<<<< HEAD
  resources :contacts, only: [:create, :new]
=======
  resources :contacts, only: [:new]
>>>>>>> 74b66ed9a430070f96230dd4b0b4b9470dc44727

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'static_pages#home'

end
