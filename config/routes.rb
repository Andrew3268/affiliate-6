Rails.application.routes.draw do
  
  get 'deals/promo_codes'
  get 'deals/coupons'
  get 'deals/quick_search'
  get 'deals/promotions'
  get 'deals/codes'
  get 'deals/bestdeals'
  get 'deals/editors_pick'
  get 'deals/shoes'
  get 'deals/sneakers01M'
  get 'deals/sneakers01W'

  devise_for :users
  resources :gadgets
  # root 'gadgets#index'
  # root 'gadgets#index01'
  # root 'home#index'
  # root 'home#index_01'
  root 'home#index_02'

  resources :recommends
  # root 'recommends#index'
  # root 'recommends#index_02'

  resources :categories
  # root 'categories#index'

  resources :subcategories
  # root 'subcategories#index'

  get 'editors/index'
  get 'editors/editor_01'

  get 'guides/index'
  get 'guides/guide_01'
  get 'guides/guide_02'
  get 'guides/guide_03'
  get 'guides/guide_04'
  get 'guides/guide_05'
  get 'guides/guide_06'
  get 'guides/guide_07'
  get 'guides/guide_08'
  get 'guides/guide_09'
  get 'guides/guide_10'
  
  get 'blogs/index'
  get 'blogs/blog_01_amz_prime'
  get 'blogs/blog_02_amz_trial'
  get 'blogs/blog_03_backtoschool'
  get 'blogs/blog_04_thebestdealsofweek'
  get 'blogs/blackfridayinjuly'


  get 'promocodes_days/day_01'
  get 'promocodes_days/day_02'
  get 'promocodes_days/day_03'
  get 'promocodes_days/day_04'
  get 'promocodes_days/day_05'
  get 'promocodes_days/day_06'
  get 'promocodes_days/day_07'

  get 'deals_days/day_01'
  get 'deals_days/day_02'
  get 'deals_days/day_03'
  get 'deals_days/day_04'
  get 'deals_days/day_05'
  get 'deals_days/day_06'
  get 'deals_days/day_07'

  resources :messages
  # root 'messages#index'

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
  get '/sitemap' => 'sitemap#index',defaults: {format: "xml"}
end
