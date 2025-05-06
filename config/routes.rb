Rails.application.routes.draw do
  devise_for :users

  namespace :admin do
    get 'dashboard', to: 'dashboard#index'
    resources :players, only: [:index, :new, :edit, :create, :update]
    resources :sessions, only: [:index, :new, :create, :edit, :update] do
      collection do
        get :form
      end
    end
  end

  root to: "admin/dashboard#index"
end
