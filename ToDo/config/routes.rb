Rails.application.routes.draw do
  devise_for :users, controllers: {
        registrations: 'users/registrations'
      }
  resources :tasks, only: [:index, :show] do
    resources :usertasks, only: :create
  end
  root 'tasks#index'
end
