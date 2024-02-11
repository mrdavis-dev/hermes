Rails.application.routes.draw do
  
  get '/send_email', to: 'email_sender#send_email'
  resources :users
  post '/auth/login', to: 'authentication#login'
  
  resources :shippeds, except: [:destroy, :update]

end
