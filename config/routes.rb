Rails.application.routes.draw do
  get 'about/index'
  root 'welcome#index'

  devise_for :users
  resources :users
  resources :menus

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
