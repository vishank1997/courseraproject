Rails.application.routes.draw do
  get 'dis_course/index'

  get 'course/user_course_running'

  #post'course/user_course_running_post'
  
  #post 'course/single_course_post'

  post 'teacher_add_course/add_lecture'
    
  get 'course/single_course'

  post 'course/enroll_now'
  
  post 'course/unenroll'

  get 'teacher_add_course/addcourse_get'

  get 'teacher_add_course/displaycourse'

  get 'teacher_add_course/enrolledstudents'

  post 'teacher_add_course/addcourse'

  #get 'course/index'
  
  devise_for :teachers
  
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  
  get '/' => 'dis_course#index'
  
  get 'course/user_courses'

 # devise_scope :user do
 # delete 'sign_out', :to => 'devise/sessions#destroy', :as => :destroy_user_session
#end 

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
