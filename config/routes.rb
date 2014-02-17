Sample3::Application.routes.draw do
  devise_for :recruiters
  devise_for :athletes
  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'
  root :to => "home#index"
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users
end