Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  #devise_for :admin_users, ActiveAdmin::Devise.config
 # devise_for :admins
  get 'welcome/index'

  root to: "welcome#index"

  controller :sessions do
    get 'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end
  
  resources :posts
  resources :deusts do 
    resources :semesters
  	resources :matieres do 
  		resources :posts do 
  		  resources :images 
        resources :pdfs
  		end
  	end
  end 

end


