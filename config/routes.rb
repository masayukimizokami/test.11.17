Rails.application.routes.draw do
  
  resources :profiles
  get "/users/profile",to: "users#profile"
  post "/users/profile_uodate",to: "users#profile_uodate"
  get "/rooms/myroom",to: "rooms#myroom"
  get "/rooms/reserve",to: "rooms#reserve"
  
  get 'home/index'
  devise_for :users
  root to: "rooms#index"
  resources :users 
  resources :rooms do
      collection do
        get 'search'
      end
    end
  resources :searches

  

  get 'reserve/index' # 入力画面
  get 'reserve/new' # 入力画面
  post 'reserve/confirm' # 確認画面
  post 'reserve/back' # 確認画面から「入力画面に戻る」をクリックしたとき
  post 'reserve/complete' # 完了画面

   

end
