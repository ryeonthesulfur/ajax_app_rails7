class ApplicationController < ActionController::Base
  before_action :basic_auth

  private

  def basic_auth
    authenticate_or_request_with_http_basic do |username, password|
      username == ENV['BASIC_AUTH_USER'] && password == ENV['BASIC_AUTH_PASSWORD']
    end
  end
end



=begin

＊＊エラー内容＊＊

ターミナル上でのBasic認証の設定のためにシェル（zsh）に頼んで、OSへBasic認証のユーザー名とパスワードを環境変数として登録してもらう時のことです。
ターミナル上で環境変数を設定するのは初めてだったので、全く関係のない部分に加筆してしまっていたみたいで、Basic認証が機能しないというエラーが発生していました。
それはたまたまわかりやすい部分だったので、すぐに気づくことができましたが、もし気づいていなかったら、Basic認証の設定を何度も見直してもエラーが解消されないという状況が続いていたと思います。
また、その環境変数と application_controller.rb のコードを照らし合わせてみると、環境変数の名前が違うことに気づきました。
コレを直してみたところ、無事にBasic認証が機能するようになりました！

=end

