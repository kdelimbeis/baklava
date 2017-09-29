Rails.application.routes.draw do

  get 'about/index'
  root 'welcome#index'

  devise_for :users
  resources :users

  resources :menus do
    resources :categories do
      resources :items
    end
  end

  resources 'contacts', only: [:new, :create], path_names: { new: '' }
if Rails.env.development?
  mount LetterOpenerWeb::Engine, at: "/letter_opener"
end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
