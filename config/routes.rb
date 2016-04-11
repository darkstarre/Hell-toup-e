Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
   root 'welcome#index'

  # Example of regular route:
     get '/tweets/' => 'tweets#index'
     
     #OAUTH
     #get '/auth/twitter'
     #get '/auth/twitter/callback'

    # get 'replies/' => 'replies#index'
    # get 'media/'   => 'media#index'

end
