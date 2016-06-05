Rails.application.routes.draw do
  get 'users/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users do
    get :about, on: :collection
    get :signup, on: :collection
    get :login, on: :collection
  end

  root 'users#index'
end
