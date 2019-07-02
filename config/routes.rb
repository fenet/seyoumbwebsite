Rails.application.routes.draw do

  get 'static_pages/contact_us'
  get 'static_pages/about_us'
  get 'static_pages/our_services'
  get 'static_pages/home'
  #get 'portofolios/index'
  #get 'portofolios/show'
  #get 'testimonies/index'

  resources :testimonies, only: [:index]
  resources :portofolios,  only: [:index, :show]

  get 'static_pages/contact_us'
  get 'static_pages/about_us'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'static_pages#home'

end
