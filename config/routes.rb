Rails.application.routes.draw do
  resources :parks do
    resources :plants, only: :create
  end
  resources :plants, only: :destroy
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
