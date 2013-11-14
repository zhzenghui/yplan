Yplan::Application.routes.draw do
  
  get "/"  => "static_pages#home" 
  get '/home' => "static_pages#home" 
  match '/blog',   to: 'static_pages#blog',   via: 'get'
  match '/community',   to: 'static_pages#community',   via: 'get'
  match '/q_a',   to: 'static_pages#q_a',   via: 'get'
  match '/she',   to: 'static_pages#she',   via: 'get'
  match '/contact',   to: 'static_pages#contact',   via: 'get'
  match '/signin',   to: 'static_pages#signin',   via: 'get'
  post "signin" => "sessions#login"

  match '/signup',   to: 'static_pages#signup',   via: 'get'
  match '/help',   to: 'static_pages#help',   via: 'get'  
  match '/about',   to: 'static_pages#about',   via: 'get'
  
  
  # sessions
  
  # devise_for :users, :path => "account", :controllers => {
      # :registrations => :account,
      # :sessions => :sessions,
      # :omniauth_callbacks => "users/omniauth_callbacks"
    # }

  # delete "# account/auth/:provider/unbind" => "users#auth_unbind", as: 'unbind_account'
#   post "account/update_private_token" => "users#update_private_token", as: 'update_private_token_account'
  
  
  resources :sessions
  
  resources :usermeta

  resources :terms

  resources :term_taxonomies

  resources :term_relationships

  resources :postmeta

  resources :commentmeta

  resources :options

  resources :links

  resources :comments

  resources :posts

  resources :users
  
  
  get "index" =>  "posts#index"
  get "home" =>  "posts#index"

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
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

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end
  
  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
