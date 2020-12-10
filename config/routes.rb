Rails.application.routes.draw do
  resources :pet_histories
  resources :pets
  resources :clients


  resources :pets do
    resources :pet_histories do  
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "pets#index"


end
