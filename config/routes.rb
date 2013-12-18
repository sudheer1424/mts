Mts::Application.routes.draw do

  resource :Users
  match '/register'=> 'users#new'
 
   root :to => 'users#index'

end
