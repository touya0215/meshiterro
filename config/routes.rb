Rails.application.routes.draw do
  get '/homes/about' => 'homes#about', as: 'about'
  #as: Prefix Verb の変更 ec2-user:~/environment/meshiterro (main) $ rails routes にて確認できる。


  devise_for :users
  root to: "homes#top"
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
