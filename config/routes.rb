Rails.application.routes.draw do
  root 'posts#index'
  get 'posts/index'
  get 'posts/new'
  post 'posts/create'
  get 'posts/show'
  # 상세 페이지
  get 'posts/show/:id' => "posts#show"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
