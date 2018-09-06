Rails.application.routes.draw do
  devise_for :users, controllers: {
        registrations: 'users/registrations'
      }
  resources :tasks, only: [:index, :show] do
    resources :usertasks, only: :create
    collection do
      get :completed
      get :uncompleted
    end
  end
  root 'tasks#index'
end
