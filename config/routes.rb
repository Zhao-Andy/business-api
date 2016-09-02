Rails.application.routes.draw do
  get 'companies/index'

  namespace :api do
    namespace :v1 do
      get '/companies' => 'companies#index'
      get '/companies/:id' => 'companies#show'
      post '/companies' => 'companies#create'
      patch '/companies/:id' => 'companies#update'
      delete '/companies/:id' => 'companies#destroy'
    end
  end
  get '/companies' => 'companies#index'
end
