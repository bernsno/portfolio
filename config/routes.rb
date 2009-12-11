ActionController::Routing::Routes.draw do |map|
  map.root :controller => 'works'
  map.resources :works, :only => [:index, :show]
  map.logout '/logout', :controller => 'user_sessions', :action => 'destroy'
  map.login '/login', :controller => 'user_sessions', :action => 'new'
  map.resource :user_session, :only => [:new, :create, :destroy]

  
  map.namespace :admin do |admin|
    admin.root :controller => 'works'
    admin.resources :works
    admin.resources :categories
  end
end
