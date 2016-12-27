Rails.application.routes.draw do
  devise_scope :user do
    authenticated :user do
      root 'users#show', as: :authenticated_root
    end

    unauthenticated do
      root 'devise/registrations#new', as: :unauthenticated_root
    end
  end

  devise_for :users, controllers: { registrations: "registrations" }
  resources :users
  resources :children
  
end
