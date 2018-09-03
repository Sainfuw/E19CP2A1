Rails.application.routes.draw do
  devise_for :users, controllers: {
        registrations: 'users/registrations'
      }
  resources :tasks, only: [:index, :show]
  root 'tasks#index'
end
