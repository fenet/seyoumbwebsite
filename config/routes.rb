Rails.application.routes.draw do

<<<<<<< HEAD

=======
>>>>>>> 7b5396916e1869e9a22940437225a68e76745dbd
  get 'static_pages/about_us'

  get 'static_pages/our_services'

  get 'static_pages/faq'

  #get 'static_pages/our_services'


  resources :testimonies, only: [:index]
  resources :portofolios,  only: [:index, :show]

  resources :contacts, only: [:create, :new]

<<<<<<< HEAD

=======

  #resources :contacts, only: [:new]


>>>>>>> 7b5396916e1869e9a22940437225a68e76745dbd

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'static_pages#home'

end
