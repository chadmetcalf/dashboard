Rails.application.routes.draw do

  resource :client_dashboard, only: [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
