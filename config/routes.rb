Rails.application.routes.draw do
  devise_for :moussaillons
  root 'gossips#index'
  resources :gossips

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
