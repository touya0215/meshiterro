Rails.application.routes.draw do
  #get 'post_images/new'
  #get 'post_images/index'
  #get 'post_images/show'
  #上三列を下の一行に変更
  resources :post_images, only: [:new, :index, :show]

  get '/homes/about' => 'homes#about', as: 'about'
  #as: Prefix Verb の変更 ec2-user:~/environment/meshiterro (main) $ rails routes にて確認できる。


  devise_for :users
  root to: "homes#top"


  resources :post_images, only: [:new, :create, :index, :show]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
