ActionController::Routing::Routes.draw do |map|
  map.logout '/logout', :controller => 'sessions', :action => 'destroy'
  map.login '/login', :controller => 'sessions', :action => 'new'
  map.register '/register', :controller => 'usuarios', :action => 'create'
  map.signup '/signup', :controller => 'usuarios', :action => 'new'
  map.resources :usuarios
  
  map.resource :session

  map.resources :mapas

  map.resources :tipo_banners

  map.resources :banners

  map.resources :categorias

  map.resources :marcas

  map.resources :produtos
  
  map.resources :pesquisas

  map.resources :site, :collection => {:sobre_nos => :get, :localizacao => :get, :contatos => :get}
  
  map.root :controller => "site"

  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
