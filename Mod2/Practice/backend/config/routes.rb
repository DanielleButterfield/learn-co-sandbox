Rails.application.routes.draw do
  resources :ships, only:[:index, :show]
  resources :pirates, only:[:inxex, :show, :create]
end
