Rails.application.routes.draw do
  get 'cultos/index'
  get 'cultos/show'
  get 'cultos/new'
  get 'cultos/edit'
  resources :musicas
  resources :usuarios
  resources :cultos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
