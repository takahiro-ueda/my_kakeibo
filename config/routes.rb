Rails.application.routes.draw do
  resources :meetings
  devise_for :users
  # get 'top/index'
  root "top#index"
  post "income_values/new(/:name)" => "income_values#new"
  post "fixedcost_values/new(/:name)" => "fixedcost_values#new"
  post "variablecost_values/new(/:name)" => "variablecost_values#new"

  get "balance_confirm" => "balance_confirm#top"
  post "balance_confirm/show(/:name)" => "balance_confirm#show"
  post "balance_confirm/show_year(/:name)" => "balance_confirm#show_year"

  get    'users/:id'   =>  'users#show'
  get 'signup', to: 'users#new'
  resources :users, only: [:index, :show, :create, :edit, :update]

  resources :incomes
  resources :fixedcosts
  resources :variablecosts
  resources :income_values
  resources :fixedcost_values
  resources :variablecost_values
  resources :users, only: [:edit, :update]
  resources :users, :only => [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
