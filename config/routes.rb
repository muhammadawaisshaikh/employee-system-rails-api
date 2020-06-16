Rails.application.routes.draw do
  
  api_version(:module => "V1", :path => {:value => "v1"}) do
    mount_devise_token_auth_for 'Admin', at: 'auth'
    resources :users
  end 

end
