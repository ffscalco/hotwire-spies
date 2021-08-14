Rails.application.routes.draw do
  resources :spies do
    collection do
      post 'clearance'
    end
  end  
end
