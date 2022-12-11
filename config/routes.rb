Rails.application.routes.draw do
  root 'posts#index'
  get 'posts/index'
  get 'posts/new'
  post 'posts/create'
  get 'posts/show'
  # 상세 페이지
  get 'posts/show/:id' => "posts#show"
  # 수정 페이지
  get 'posts/edit/:id' => "posts#edit"
  # update 하기
  post 'posts/update/:id' => "posts#update"
  # 게시글 삭제하기
  get 'posts/destroy/:id' => "posts#destroy"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end