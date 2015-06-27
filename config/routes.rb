Rails.application.routes.draw do
  get 'home/index'

  devise_for :users

  resources :organizations

  resources :promotions do
    resources :challenges
  end

  root 'home#index'
end
