Rails.application.routes.draw do
  get '/statement/income/:organization/:location' => 'statement#income', as: 'income_statement'
  get '/statement/balance/:organization/:location' => 'statement#balance', as: 'balance_statement'
  get '/statement/all/:organization/:location' => 'statement#all', as: 'all_statement'

  resources :locations
  resources :organizations
  devise_for :users
  as :user do
    get 'users/edit' => 'devise/registrations#edit', :as => 'edit_user_registration'    
    put 'users' => 'devise/registrations#update', :as => 'user_registration'            
  end
  root to: "home#index"
  get 'home/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
