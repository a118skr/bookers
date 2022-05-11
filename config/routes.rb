Rails.application.routes.draw do
  get 'books' => 'books#index'
  post 'books' => 'books#create' #index画面から新規投稿を送る

  get 'books/:id' => 'books#show',as: 'book' #名前ルート指定　indexからリンク作成

  get 'books/:id/edit' => 'books#edit',as: 'edit_book'
  patch 'books/:id' => 'books#update',as: 'update_book'

  delete 'books/:id' => 'books#destroy',as: 'destroy_book'


  root to: 'homes#top'


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
