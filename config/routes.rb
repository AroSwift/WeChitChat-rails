Rails.application.routes.draw do
  get 'users/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users do
    get 'users/home_page', to: 'users#home_page'
  end

  root 'users#home_page'
end
