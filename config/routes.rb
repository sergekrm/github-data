Rails.application.routes.draw do
  root 'logins#home'
  get '/show', to: 'logins#show'
end
