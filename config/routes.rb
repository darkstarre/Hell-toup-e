Rails.application.routes.draw do
  get '/' => 'welcome#index'
  get '/auth/twitter', :as => 'twitter_auth'
  match "/auth/:provider/callback" => "sessions#create", :via => [:get, :post]
  get "/signout" => "sessions#destroy", :as => :signout
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"


  # Example of regular route:
  get 'sessions/welcome' => 'sessions#welcome'
  post 'sessions/create' => 'sessions#create'
  delete 'sessions/destroy' => 'sessions#destroy'
  get 'users/show' => 'users#show'

  get '/tweets/' => 'tweets#index'



  # get 'replies/' => 'replies#index'
  # get 'media/'   => 'media#index'

end
