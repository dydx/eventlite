Rails.application.routes.draw do
  resources :events, :path => '' do
    member do
      post 'attend'
      get 'hosting'
      get 'attending'
    end
  end
  devise_for :users
end
