Rails.application.routes.draw do


  devise_for :users
  root 'homes#top'

  get '/homes/about' => 'homes#about', as: 'about'
  #as: Prefix Verb の変更 ec2-user:~/environment/meshiterro (main) $ rails routes にて確認できる。

  resources :post_images, only: [:new, :create, :index, :show, :destroy] do
    resources :post_comments, only: [:create]
  end

  #get 'users/show'
  #get 'users/edit'
  #上二列を下の一行に変更
  resources :users, only: [:show, :edit, :update]


  #get 'post_images/new'
  #get 'post_images/index'
  #get 'post_images/show'
  #上三列を下の一行に変更
  #resources :post_images, only: [:new, :index, :show]





  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
