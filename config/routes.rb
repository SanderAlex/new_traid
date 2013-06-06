TitanTraid::Application.routes.draw do

  get 'sitemap', :to => 'sitemap#show'

  match '/Goryachee_vodosnabzhenie', :to => redirect('/Goryachee_vodosnabzhenie.pdf')
  match '/Modulnaya_elektricheskaya_kotelnaya_EK-_1200BKm', :to => redirect('/Modulnaya_elektricheskaya_kotelnaya_EK-_1200BKm.pdf')
  match '/Modulnaya_elektricheskaya_kotelnaya_EK-50G', :to => redirect('/Modulnaya_elektricheskaya_kotelnaya_EK-50G.pdf')
  match '/Modulnaya_elektricheskaya_kotelnaya_EK-100', :to => redirect('/Modulnaya_elektricheskaya_kotelnaya_EK-100.pdf')
  match '/Modulnye_elektricheskie_kotelnye_EK-200_EK-26', :to => redirect('/Modulnye_elektricheskie_kotelnye_EK-200_EK-26.pdf')
  match '/Modulnye_elektricheskie_kotelnye_EK-200BK_EK', :to => redirect('/Modulnye_elektricheskie_kotelnye_EK-200BK_EK.pdf')
  match '/Schit_upravlenia_kotlom_EPZ-250', :to => redirect('/Schit_upravlenia_kotlom_EPZ-250.pdf')
  match '/Schity_upravlenia_EPZ-100_EPZ-50_EPZ-25', :to => redirect('/Schity_upravlenia_EPZ-100_EPZ-50_EPZ-25.pdf')
  match '/Elektricheskie_kotly_EPZ-25i6_EPZ-50i2_EPZ-100', :to => redirect('/Elektricheskie_kotly_EPZ-25i6_EPZ-50i2_EPZ-100.pdf')
  match '/Elektrichesky_kotel_EPZ-25i2', :to => redirect('/Elektrichesky_kotel_EPZ-25i2.pdf')

  get "ajax/refpt"
  get "ajax/refpt2"
  get "pictures/upload"

  resources :pages, :products, :ajax, :pictures

  root :to => 'pages#about'

  match '/about', :to => 'pages#about'
  match '/doc', :to => 'pages#doc'
  match '/payment', :to => 'pages#payment'
  match '/contact', :to => 'pages#contact'
  match '/map', :to => 'pages#map'
  
  match '/admin', :to => 'products#index'
  match '/new', :to => 'products#new'
  
  match '/search', :to => 'products#search'

  match "/products/:id/create_assets", :to => 'pictures#create_assets'
  match "/create_assets", :to => 'pictures#create_assets'
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
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
