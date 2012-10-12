環境
====

動作確認しているバージョン


    $ ruby -v
    ruby 1.9.3p0 (2011-10-30 revision 33570) [x86_64-darwin11.2.0]
    $ rails -v
    Rails 3.2.8


## 参考

[Ruby on Rails 3.2 を Mac OS X にインストールする手順をかなり丁寧に説明してみました](http://www.oiax.jp/rails/zakkan/rails_3_1_installation_on_macosx.html)


セットアップ
===
    $ bundle install
    $ rake db:migrate


起動
====
    $ rails s
    => Booting WEBrick
    => Rails 3.2.8 application starting in development on http://0.0.0.0:3000
    => Call with -d to detach
    => Ctrl-C to shutdown server
    [2012-10-12 20:09:20] INFO  WEBrick 1.3.1
    [2012-10-12 20:09:20] INFO  ruby 1.9.3 (2011-10-30) [x86_64-darwin11.2.0]
    [2012-10-12 20:09:20] INFO  WEBrick::HTTPServer#start: pid=18838 port=3000

下のローカルアドレスにアクセスする  
http://localhost:3000/