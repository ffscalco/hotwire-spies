Rails.application.routes.draw do
  devise_for :users
  resources :spies do
    collection do
      post 'clearance'
    end
  end  
end
