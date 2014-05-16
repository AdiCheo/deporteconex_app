DeporteConex::Application.routes.draw do
  root :to => "home#index"
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users

  get "developer_logout" => "developer_sessions#destroy", as: :developer_session_end
  get "lockpage/" => "developer_sessions#lockpage", as: :developer_lock
  get "auth/twitter", as: :developer_login
  get "auth/twitter/callback" => "developer_sessions#create"
  

end
