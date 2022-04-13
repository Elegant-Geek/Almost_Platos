Rails.application.routes.draw do
  resources :complaints
  resource :session, only: [:new, :create, :destroy] #note singular form "resource and session. SINGULAR session"
  root "users#index"
  get "login" => "sessions#new"
  get "signup" => "users#new"
  get "/users/:user_id/items/filter/:filter" => "items#index", as: :filtered_items


  resources :users do
    resources :items
  end


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
