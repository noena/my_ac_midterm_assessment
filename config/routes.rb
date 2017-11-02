Rails.application.routes.draw do

  root 'doctors#index'


  resources :doctors, param: :username do
    collection do
      get 'list_female'
      get 'list_male'
    end
  end
  devise_for :users


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
