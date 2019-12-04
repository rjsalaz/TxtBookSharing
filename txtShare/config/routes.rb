Rails.application.routes.draw do

  resources :textbooks, only: [:index, :new, :create, :destroy]
  root "textbooks#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
