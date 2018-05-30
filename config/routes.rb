Rails.application.routes.draw do
  devise_for :users
  root 'tweets#index'
  resources :tweets do
    resources :comments, only: [:create]
  end
  resources :users,only: [:show]


  # get 'tweets' => 'tweets#index' #ツイート一覧画面
  # get 'tweets/new' => 'tweets#new' #ツイート投稿画面
  # post 'tweets' => 'tweets#create' #ツイート投稿画面
  # get 'users/:id' => 'users#show' #Mypageへ
  # get 'tweets/:id/edit' => 'tweets#edit' #ツイート編集画面
  # patch 'tweets/:id' =>  'tweets#update' #ツイートを編集する
  # get 'tweets/:id' => 'tweets#show' #ツイート詳細画面
  # delete 'tweets/:id' => 'tweets#destroy' #ツイートの削除:The action 'destory' could not be found for TweetsControllerと、入力間違いでエラーが出る



end
