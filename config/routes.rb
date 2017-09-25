Rails.application.routes.draw do
  resources :landing
  resources :incomes
  resources :expenses
  
  resources :goals do
    member do
      patch :complete
    end
  end

  resources :shopping_lists do
    resources :shopping_items do
      member do
        patch :complete
      end
    end
  end

  devise_for :users

  get 'transactions', to: 'transactions#index'

  root 'landing#index'
  
end
