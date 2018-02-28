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

  resources :users
    
  resources :deusts do 
    resources :matieres
  	resources :semesters do 
  		resources :matieres do 
  			resources :posts do 
  				resources :images 
          resources :pdfs
  			end
  		end
  	end
  end 
end


