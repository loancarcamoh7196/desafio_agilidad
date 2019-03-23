Rails.application.routes.draw do
  get 'billings/create'
  devise_for :users
  resources :products do
    resources :billings, only: :create
  end
  root "products#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
