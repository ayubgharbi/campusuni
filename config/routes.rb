Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  #devise_for :admin_users, ActiveAdmin::Devise.config
 # devise_for :admins
  get 'welcome/index'
  get 'about/index'
  get 'contact/index'
  get 'privacy/index'
  get 'admin/index'
  

  root to: "welcome#index"

  controller :sessions do
    get 'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end
  
  resources :posts do 
    get '/download', to: 'posts#download', :as => :download
  end
  resources :deusts do 
    resources :semesters
  	resources :matieres do 
  		resources :posts do 
  		  resources :images 
        resources :pdfs
        get '/download', to: 'posts#download', :as => :download
  		end
  	end
  end 
  
end


