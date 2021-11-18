Rails.application.routes.draw do
  
  get "/users/profile",to: "users#profile"
  get "/rooms/myroom",to: "rooms#myroom"
  get "/rooms/reserve",to: "rooms#reserve"
  
  get 'home/index'
  devise_for :users
  root to: "searches#new"
  resources :users 
  resources :rooms
  resources :searches

  

  get 'reserve/index' # 入力画面
  get 'reserve/new' # 入力画面
  post 'reserve/confirm' # 確認画面
  post 'reserve/back' # 確認画面から「入力画面に戻る」をクリックしたとき
  post 'reserve/complete' # 完了画面

end
