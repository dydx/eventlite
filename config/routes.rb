Rails.application.routes.draw do
  resources :events, :path => ''
  devise_for :users
end
