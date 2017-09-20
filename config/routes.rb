Rails.application.routes.draw do
  root 'pages#home'
  resources :wines, only: [:show, :new, :create]
end
