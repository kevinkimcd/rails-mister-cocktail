Rails.application.routes.draw do
  # resources :cocktails
  root to: "cocktails#index"
  get "cocktails", to: "cocktails#index"
  get "cocktails/new", to: "cocktails#new", as: "new_cocktails"
  post "cocktails", to: "cocktails#create"
  get "cocktails/:id", to: "cocktails#show", as: "cocktail"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
