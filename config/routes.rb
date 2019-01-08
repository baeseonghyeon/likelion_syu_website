Rails.application.routes.draw do
  resources :services
  resources :mains
  devise_for :users, controllers: {registrations:'users/registrations'}
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :posts
  
  # 홈페이지를 들어오자마자 먼저 로그인하도록 root를 설정
  root 'mains#index'
  get '/images' => 'images#new'
  post '/tinymce_assets' => 'tinymce_assets#create'
  get '/notice' => 'posts#notice'
  get '/homework' => 'posts#homework'
  get '/lecture' => 'posts#lecture'
  get '/freeboard' => 'posts#freeboard'
  get '/questions' => 'posts#questions'
  get '/users' => 'posts#mypage'
  # get '/users/:id' => 'mypages#mypage'
  get '/users/myposts' => 'posts#mypost'
end
