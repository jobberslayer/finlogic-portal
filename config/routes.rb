Rails.application.routes.draw do
  #get 'aoii/income_statement'
  get 'aoii/income_statement/:id' => 'aoii#income_statement', as: 'aoii_income_statement'

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
