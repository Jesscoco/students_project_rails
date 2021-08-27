Rails.application.routes.draw do
  root 'students#index'
  
  resources :students do
    collection do
      post :confirm
    end
  end

end
