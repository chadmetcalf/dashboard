Rails.application.routes.draw do
  namespace :v1, format: :json do
    resources :charts, only: [:show]
  end
  resource :client_dashboard, only: [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
