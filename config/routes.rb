Rails.application.routes.draw do

  root to: 'welcome#index'

  resources :users, only: [:new, :create, :index, :show]
end
