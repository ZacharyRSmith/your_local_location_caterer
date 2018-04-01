Rails.application.routes.draw do
  post 'locations', to: 'locations#create', defaults: { format: 'json' }

  root 'application#hello'
end
