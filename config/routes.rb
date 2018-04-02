Rails.application.routes.draw do
  get 'locations', to: 'locations#index', defaults: { format: 'json' }
  post 'locations', to: 'locations#create', defaults: { format: 'json' }

  root 'application#hello'
end
