Rails.application.routes.draw do


  get 'static_pages/about_us'
<<<<<<< HEAD
  
  get 'static_pages/our_services'

  get 'static_pages/faq'

=======
>>>>>>> 6c171a0db294381a994e13220401519bee730b6f

  #get 'static_pages/our_services'


  resources :testimonies, only: [:index]
  resources :portofolios,  only: [:index, :show]

  resources :contacts, only: [:create, :new]


  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'static_pages#home'

end
