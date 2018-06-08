Rails.application.routes.draw do
  resources :contactos
  resources :articulos
  resources :novedads
  resources :alerta
  devise_for :users, controllers: { registrations: "registrations"}
  get 'inicio/index'
  root 'alerta#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
