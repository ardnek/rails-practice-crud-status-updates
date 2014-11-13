Rails.application.routes.draw do
  resources :updates
  root "updates#index"
end
