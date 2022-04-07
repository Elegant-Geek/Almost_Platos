Rails.application.routes.draw do
  resource :session, only: [:new, :create, :destroy] #note singular form "resource and session. SINGULAR session"
  get "login" => "sessions#new"
  get "signup" => "users#new"
  resources :users
  root "items#index"
  resources :items
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
