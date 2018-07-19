Rails.application.routes.draw do

  root to: 'welcome#index'
  get '/login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy'
  get 'make_mentor', to: 'skills#make_mentor'

  resources :users do
    resources :skills, only: [:new, :create]
  end
  resources :skills
  resources :categories
end
