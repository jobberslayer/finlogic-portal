Rails.application.routes.draw do
  # need these for pdf versions for printing
  get '/statement/income/:organization/:location' => 'statement#income', as: 'income_statement', defaults: {format: 'pdf'}
  get '/statement/balance/:organization/:location' => 'statement#balance', as: 'balance_statement', defaults: {format: 'pdf'}

  get '/statement/:organization/:location' => 'statement#index', as: 'all_statement'

  get '/locations/new/:org_id' => 'locations#new', as: 'new_organization_location'

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
