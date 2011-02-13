DocScaf::Application.routes.draw do
  
  match 'buildr', :to => 'buildr#index'
  match 'buildr/build', :to => 'buildr#build'
  match 'buildr/edit', :to => 'buildr#edit'
  match 'buildr/fill', :to => 'buildr#fill'
  match 'buildr/finish', :to => 'buildr#finish'

  match 'about', :to => 'pages#about'
  match 'signup', :to => 'users#new'
  match 'login', :to => 'access#login'
  match 'logout', :to=> 'access#logout'
  match "attempt_login", :to => 'access#attempt_login'
  match "admin", :to => 'access#dashboard'
  
  resources :users

  resources :categories
  resources :subcategories
  resources :templates
  resources :articles
  resources :sections
  resources :provisions
  resources :blanks
  
  resources :styles
  resources :temp_docs
  resources :documents

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  root :to => "pages#index"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
