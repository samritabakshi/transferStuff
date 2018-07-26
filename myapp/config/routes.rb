Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 # default_url_options :host => "samrita.bakshe@gmail.com"  
  resources :users do
      get :set_complete, on: :member
    end
    root'users#index'


    
  
end
