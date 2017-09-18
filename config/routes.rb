Rails.application.routes.draw do
  resources :incomes
  resources :expenses
  root 'transactions#index'
end
