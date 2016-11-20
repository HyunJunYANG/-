Rails.application.routes.draw do
  resources :posts do
    resources :comments, only: [:create, :destroy]
 end

  resources :bulletins do
    resources :posts
  end
  get 'welcome/index'
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
