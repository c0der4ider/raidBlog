Rails.application.routes.draw do
  devise_for :users, controller: { registrations: "registrations" }

  devise_scope :user do
    get 'login', to: 'devise/sessions#new'
    get 'signup', to: 'devise/registrations#new'
  end

  resources :posts

  root to: 'pages#index'
end
