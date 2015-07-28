Workspace::Application.routes.draw do
  
  resources :ingredients_nutrients

  resources :nutrients

  resources :participants

  resources :measurement_units

  resources :recipes do
    get 'recipe_ingredients', on: :member
  end
  
  resources :ingredients do
    get 'ingredient_nutrients', on: :member
  end
  
  root 'welcome#index'
  get "welcome/index" => 'welcome#index'

  #teste de API 
  resources :teste
  
  #importacao de ficheiro
  resources :nutrients do
    collection { post :import }
  end
  
  #importação dos nutrientes de um ingrediente
  resources :ingredients do
    collection { post :import_nutrients }
  end

end
  
  # root :to => 'welcome#index'
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

   #You can have the root of your site routed with "root"
   #root 'welcome#index'

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
