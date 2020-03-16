Rails.application.routes.draw do
  get 'doses/create'
  get 'doses/new'
  get 'doses/destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root "cocktails#home"
  resources :cocktails, only: [:index, :show, :new, :create] do
    resources :doses, only: [:new, :create]
  end
  resources :doses, only: [:destroy]
end
