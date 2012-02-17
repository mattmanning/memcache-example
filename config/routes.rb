MemcacheExample::Application.routes.draw do
  resources :contacts

  root :to => 'contacts#index'

  # match ':controller(/:action(/:id))(.:format)'
end
