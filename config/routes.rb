Rails.application.routes.draw do
  root to: 'posts#index'  
  post 'posts', to: 'posts#create'
end



=begin

＊＊「post 'posts', to: 'posts#create'」の解説＊＊

HTTP POSTリクエストが「/posts」URLに送信されたときに、「PostsController」の「create」アクションが呼び出されることを意味しています。これにより、新しい投稿を作成するためのルーティングが設定されます。


1. post: HTTPメソッドが「POST」であることを指定しています（主にフォームからのデータ送信やリソースの作成に使われます）。

2. 'posts': URLのパスが /posts になることを指定しています。

3. 「to: 'posts#create'」: リクエストを受け取った際、PostsController の create アクション（メソッド）を呼び出して処理を任せる、というルーティングの指定です。


=end
