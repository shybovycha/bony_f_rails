Rails.application.routes.draw do
  get 'beacons' => 'beacons#index'
  post 'beacons/import', as: :import_beacons
  get 'beacons/import_page'

  get 'customers/sign_up'
  get 'customers/ping_beacon'

  get 'home/index', as: :home_page

  devise_for :users

  resources :organizations

  resources :promotions do
    resources :challenges
  end

  root 'home#index'
end
