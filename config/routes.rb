ActionController::Routing::Routes.draw do |map|
  map.root :controller => 'works'
  map.resources :works, :only => [:index, :show]
  
  map.namespace :admin do |admin|
    admin.root :controller => 'works'
    admin.resources :works
  end
end
