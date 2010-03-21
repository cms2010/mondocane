ActionController::Routing::Routes.draw do |map|

  map.resources :items, :active_scaffold => true
  map.resources :items, :has_many => :images
  map.resources :images, :active_scaffold => true
  
  map.collection  '/collection',      :controller => 'pages', :action => 'collection'
  map.archive     '/archive',         :controller => 'pages', :action => 'archive'
  map.exhibitions '/exhibitions',     :controller => 'pages', :action => 'exhibitions'
  map.about       '/about',           :controller => 'pages', :action => 'about'
  
  map.connect     '/about/backstory', :controller => 'pages', :action => 'about_backstory'
  map.connect     '/about/sales',     :controller => 'pages', :action => 'about_sales'
  map.connect     '/about/press',     :controller => 'pages', :action => 'about_press'
  map.connect     '/about/schedule',  :controller => 'pages', :action => 'about_schedule'
  
  # The priority is based upon order of creation: first created -> highest priority.

  # Sample of regular route:
  #   map.connect 'products/:id', :controller => 'catalog', :action => 'view'
  # Keep in mind you can assign values other than :controller and :action
  map.connect '/item/:id', :controller => 'pages', :action => 'item'
  map.connect '/exhibition/:id', :controller => 'pages', :action => 'exhibition'
  
  map.connect '/collection/:category', :controller => 'pages', :action => 'collection_category'
  map.connect '/archive/:category', :controller => 'pages', :action => 'archive_category'

  # Sample of named route:
  #   map.purchase 'products/:id/purchase', :controller => 'catalog', :action => 'purchase'
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   map.resources :products

  # Sample resource route with options:
  #   map.resources :products, :member => { :short => :get, :toggle => :post }, :collection => { :sold => :get }

  # Sample resource route with sub-resources:
  #   map.resources :products, :has_many => [ :comments, :sales ], :has_one => :seller
  
  # Sample resource route with more complex sub-resources
  #   map.resources :products do |products|
  #     products.resources :comments
  #     products.resources :sales, :collection => { :recent => :get }
  #   end

  # Sample resource route within a namespace:
  #   map.namespace :admin do |admin|
  #     # Directs /admin/products/* to Admin::ProductsController (app/controllers/admin/products_controller.rb)
  #     admin.resources :products
  #   end

  # You can have the root of your site routed with map.root -- just remember to delete public/index.html.
  map.root :controller => "pages", :action => 'index'

  # See how all your routes lay out with "rake routes"

  # Install the default routes as the lowest priority.
  # Note: These default routes make all actions in every controller accessible via GET requests. You should
  # consider removing or commenting them out if you're using named routes and resources.
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
