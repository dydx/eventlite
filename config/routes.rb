Rails.application.routes.draw do
  resources :events, :path => '' do
    member do
      post 'attend'
      get 'hosting'
    end
  end
  devise_for :users
end
