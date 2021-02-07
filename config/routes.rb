Rails.application.routes.draw do
  root "infos#index"

  resources :informations
  
  resources :infos
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
