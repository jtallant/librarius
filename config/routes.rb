Librarius::Application.routes.draw do
  # get "libraries/index"

  # get "libraries/new"

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  root to: 'pages#home'

  match 'dashboard' => 'users#dashboard', :as => 'user_root'

  get '/help' => 'pages#help', :as => :help

  get '/contact' => 'pages#contact', :as => :contact

  get '/about' => 'pages#about', :as => :about

  get '/jobs' => 'pages#jobs', :as => :jobs

  get '/terms' => 'pages#terms_of_service', :as => :terms

  get '/privacy' => 'pages#privacy', :as => :privacy

  get '/find-clubs' => 'pages#find_clubs', :as => :find_clubs

  get '/dashboard' => 'users#dashboard', :as => :dashboard

  get '/search_books' => 'users#search_books', :as => :search_books

  # get '/my-clubs' => 'users#my_clubs', :as => :my_clubs

  # get '/my-books' => 'users#my_books', :as => :my_books

  # get '/my-stats' => 'users#my_stats', :as => :my_stats

  # get '/login' => 'devise/sessions#new', :as => :login

  # get '/users/sign_out' => 'devise/sessions#destroy', :as => :logout

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
