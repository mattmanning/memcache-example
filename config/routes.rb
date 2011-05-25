MemcacheExample::Application.routes.draw do
  resources :contacts

  match ':controller(/:action(/:id(.:format)))'
end
