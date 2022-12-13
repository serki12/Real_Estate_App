  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  Rails.application.routes.draw do
    get 'page/buy'
    get 'page/index'

    namespace 'api' do
    resources :houses     #this api has all the CRUD operation 
    # root 'api#houses'


   
   
    
      end
    end





#   Rails.application.routes.draw do
#     namespace 'api' do
#       resources :houses     #this api has all the CRUD operation 
#     end
#end
