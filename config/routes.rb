Rails.application.routes.draw do

<<<<<<< HEAD

=======
>>>>>>> aafe6e9d527f73ff3dfa45a5cc088d73c93eddcd
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


>>>>>>> aafe6e9d527f73ff3dfa45a5cc088d73c93eddcd

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'static_pages#home'

end
