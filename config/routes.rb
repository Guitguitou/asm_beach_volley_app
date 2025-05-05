Rails.application.routes.draw do
  devise_for :users

  namespace :admin do
    get 'dashboard', to: 'dashboard#index'
    resources :players, only: [:index, :new, :edit, :create, :update]
  end

  root to: "admin/dashboard#index"
end
