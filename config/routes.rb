Rails.application.routes.draw do
  root to: 'admin/dashboard#index'
  
  devise_for :users

  namespace :admin do
    get 'dashboard', to: 'dashboard#index'
  end
end
