Mediclink::Application.routes.draw do
  devise_for :users
  root :to => "users#show"
  resources :users
  resources :consultations
end
