Rails.application.routes.draw do
  devise_for :admins, controllers: {
    sessions: 'admins/sessions'
  }

  # root route
  root 'payments#index'
  resources :payments

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
