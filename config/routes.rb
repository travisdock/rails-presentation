Rails.application.routes.draw do
  root :to => "cats#index"

  resources :cats
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
