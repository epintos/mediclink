Mediclink::Application.routes.draw do
  devise_for :users
  devise_scope :users do
    root :to => "users#show"
  end
  root :to => "users#show"

  resources :consultations, :blood_works

  resources :users do
    member do
      post :regenerate_emergency_token
      post :update_emergency_information
      get :edit_emergency_information
    end
  end
  
  resources :consultations

end
