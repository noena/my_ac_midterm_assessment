Rails.application.routes.draw do

  root 'doctors#index'

  devise_for :users
  resources :doctors
  
  get 'doctors/new'

  get 'doctors/index'

  get 'doctors/show'

  get 'doctors/edit'

  get 'doctors/delete'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
