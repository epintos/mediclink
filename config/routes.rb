Mediclink::Application.routes.draw do
  devise_for :users
  devise_scope :users do
    root :to => "users#show"
  end
  root :to => "users#show"
  resources :users
  resources :consultations, :blood_works

end
