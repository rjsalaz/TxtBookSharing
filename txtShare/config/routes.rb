Rails.application.routes.draw do
  get '/', to: 'pages#index'
  get 'submit', to: 'pages#submit'

  namespace 'api' do
    resources :courses, only: [:index]
    resources :textbooks, only: [:show, :create]
  end
end
