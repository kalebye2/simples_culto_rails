Rails.application.routes.draw do
  root 'application#index'
  resources :musicas
  resources :usuarios
  resources :cultos do
    collection do
      get :hoje, as: :cultos_de_hoje
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
