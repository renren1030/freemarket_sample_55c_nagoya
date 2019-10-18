Rails.application.routes.draw do
  devise_for :users
  # get 'users/index'

  get 'users/profile'
  get 'users/index' => "users#index" 

  get 'products/details' => "products#details"
  get 'products/confirm' => "products#confirm"
  get 'products/exhibit' =>"products#exhibit"
  
  # 本人情報の登録
  get 'users/identification' => "users#identification"
  # ログアウト画面
  get 'users/logout' => "users#logout"
  # ユーザークレジットカード登録ページ
  get 'users/card' => "users#card"
  # お知らせページ
  get 'users/notification' => "users#notification"
  # やることリストページ
  get 'users/todo' => "users#todo"
  # 購入した商品-取引中ページ
  get 'users/purchase' => "users#purchase"
  # 購入した商品-過去の取引ページ
  get 'users/purchased' => "users#purchased"

  # 本人情報の新規登録
  get 'users/registration' => "users#registration"
  # 本人情報の新規登録_メールアドレス
  get 'users/detail_confirmation' => "users#detail_confirmation"

  root 'tops#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
