Rails.application.routes.draw do
  root to: "cocktails#index"
  resources :cocktails, only: [:index, :new, :create, :show, :destroy] do
    resources :doses, only: [:create]
  end

  # get "cocktails", to: "cocktails#index"
  # get "cocktails/new", to: "cocktails#new", as: "new_cocktails"
  # post "cocktails", to: "cocktails#create"
  # get "cocktails/:id", to: "cocktails#show", as: "cocktail"


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
