Mediclink::Application.routes.draw do
  devise_for :users
  devise_scope :users do
    root :to => "users#show"
  end
  root :to => "users#show"
  resources :users do
    member do
      post :regenerate_emergency_token
    end
  end
  resources :consultations

end
