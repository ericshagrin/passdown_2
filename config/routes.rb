Rails.application.routes.draw do
  root "apartments#index"
  get "/about" => "misc#about", as: :about


  resources :interested_buyers
  resources :photos
  resources :apartments
  devise_for :users

  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
