Rails.application.routes.draw do
  
  devise_for :users
  root to: "home#index"
  
  resources :prices

  resources :items do
    collection do
      post '/upload', to: 'items#upload'
      get '/download', to: "items#download"
      get '/export', to: "items#export"
    end
  end
   
end
