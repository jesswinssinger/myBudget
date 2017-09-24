Rails.application.routes.draw do

  resources :shopping_lists do
    resources :shopping_items
  end
  resources :incomes
  resources :expenses
  resources :goals

  devise_for :users

  root 'transactions#index'
  
end
