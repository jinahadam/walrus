Rails.application.routes.draw do
  root 'upload_ratings#index'
  resources :upload_ratings, only: [:create]
  match '/:id' => 'upload_ratings#symbol', :as => "show", :via => :get
  
   
end
