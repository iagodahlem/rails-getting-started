Rails.application.routes.draw do
  get 'home/index'

  resources :articles do
    resources :comments
  end

  get 'signup' => 'users#new'
  resources :users

  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'

  root 'home#index'
end
