Rails.application.routes.draw do
  devise_for :users
  get 'summary', to: 'dashboard#summary'
  get 'clients', to: 'dashboard#clients'
  get 'invoices', to: 'invoices#index'
  root to: 'pages#home'
  resources :cases, only: [:index, :show, :create, :edit, :update] do
    resources :procedures, only: [:index]
    resources :documents, only: [:index, :new, :create]
    resource :invoice, only: [:show, :create]
    resources :notifications, only: [:create, :new]
  end
  resources :procedures, only: [:show]
  resources :documents, only: [:destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
