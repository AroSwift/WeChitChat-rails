Rails.application.routes.draw do
  get 'users/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users do
    get  :kid_signup, on: :collection
    post :kid_signup, on: :collection
    get  :parent_signup, on: :collection
    post :parent_signup, on: :collection
    get  :login, on: :collection
    post :login, on: :collection
  end

  root 'users#index'
end
