FeastHealth::Application.routes.draw do
  
  resources :recipes

  root 'static_pages#help'
  
  devise_for :admin_users
  
  resources :coupons
  resources :recreations
  resources :users

  match '/coach',     to: 'static_pages#home',    via: 'get'
  match '/',          to: 'static_pages#help',    via: 'get'
  match '/signin',    to: 'static_pages#sign-in', via: 'get'
  
  match '/textout/index', to: 'textout#index',    via: 'get'
  match '/textout/lenny', to: 'textout#lennytest',via: 'get'
  match '/voiceout',      to: 'textout#makecall', via: 'get'
  match '/textin',        to: 'textout#textin',   via: 'get'
  match '/textout',       to: 'textout#sendtext', via: 'get'
  match '/voicein',       to: 'textout#voicein',  via: 'get'

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
