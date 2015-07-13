Rails.application.routes.draw do
  
  get '/pins', to: 'pins#index'
  get '/pins/new', to: 'pins#new', as: 'new_pin'				#rails will automatically give you this named path when you do: "resources :pins"
  post '/pins', to: 'pins#create'
  get '/pins/:id', to: 'pins#show', as: 'pin' 
  put '/pins/:id', to: 'pins#update' 											#used for updating an entire resource
  patch '/pins/:id', to: 'pins#update'  									#used for updating little parts of a resources
  get '/pins/:id/edit', to: 'pins#edit', as: 'edit_pin'
  delete '/pins/:id', to: 'pins#destroy'
  root 'pins#index'   #is not created when you do: "resources :pins"
  
end



