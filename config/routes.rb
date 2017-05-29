Rails.application.routes.draw do
  get 'weather_main/index'
  root 'weather_main#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users do
    resources :histories
  end
end
