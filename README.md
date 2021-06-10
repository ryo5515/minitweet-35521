# アプリ名
# [![Image from Gyazo](https://i.gyazo.com/0b60651dd969049d04ce47c6f5146f89.png)](https://gyazo.com/0b60651dd969049d04ce47c6f5146f89)MiniTweet[![Image from Gyazo](https://i.gyazo.com/0b60651dd969049d04ce47c6f5146f89.png)](https://gyazo.com/0b60651dd969049d04ce47c6f5146f89)
<br>

# 概要
## 簡易版ツイートアプリを制作しました。<br><br>
ユーザー登録機能、ツイート投稿機能、いいね機能が使えます。
<br>
<br>

# 本番環境
https://minitweet-35521.herokuapp.com/  
## ログイン情報  
Basic認証  
* ユーザー名 admin
* パスワード 2222  
<br>

テストユーザーログイン  
* メールアドレス test@test.com
* パスワード 111aaa  
<br>
* 2021/6/6現在ではGoogle Chromeでの使用を想定しております。
<br><br>

# 制作背景（意図）
カリキュラム外の知識として、いいね機能を持った簡単に何か一言をつぶやくことが出来るアプリケーションを作成してみたいと思い、制作しました。  
<br>

# 要件定義
| 機能             | 目的   | 詳細   | ストーリー |
| :-------------- | ----  | ------ | -------- |
| ユーザー管理機能   | 登録されたユーザーのみ使用可能にするため | アカウントid、アカウント名、email、パスワードを登録させる | ユーザー登録することでツイート投稿機能、マイページの表示、いいね機能、ツイートの閲覧が可能になる |
| ツイート投稿機能   | ツイート投稿機能を目的としたアプリケーションのため | ログインしたユーザーはツイートを投稿することが出来る | ツイートは30文字以内を投稿可能とし、現時点では投稿の編集や削除は不可である |
| いいね機能        | JQueryを使用したいいね機能の実装方法を習得するため | 自分以外のユーザーが投稿したツイートにいいねをつけることが出来る | 獲得したいいねはカウントされ、再度クリックすることでいいねの解除をすることが出来る |
| 通知機能          | いいね機能を実装するにあたっての追加機能とするため | 自分のツイートが他のユーザーにいいねされた際に通知を受け取ることが出来る | 他のユーザーが自分のどのツイートにいいねをしたのかを通知欄に表示させる |
| マイページの表示   | ツイートが増えてきた際に表示を絞り視認性を上げるため | ユーザーのページを表示することでそのユーザーのアカウントid、登録日、投稿したツイート一覧を見ることが出来る | マイページへのボタンと、ツイート一覧のユーザー名をクリックすることで各ユーザーのマイページへ遷移することが出来る |

<br><br>

# DEMO
## トップページ
[![Image from Gyazo](https://i.gyazo.com/5b89228931fffff5ffb2c56ebed05ee4.png)](https://gyazo.com/5b89228931fffff5ffb2c56ebed05ee4)
画面上部のヘッダーにはトップページのリンクを貼り、下部のフッターにはCopyrightを表示してみるようにしました。<br><br>

## ユーザー登録画面
[![Image from Gyazo](https://i.gyazo.com/7556012288c79af36f7bfc0d684913f4.png)](https://gyazo.com/7556012288c79af36f7bfc0d684913f4)
新規登録画面です。<br><br>

## ログイン画面
[![Image from Gyazo](https://i.gyazo.com/4492eafded534209449e7ff59b677d70.png)](https://gyazo.com/4492eafded534209449e7ff59b677d70)
ログイン画面です。<br><br>

## ログイン後のトップページ
[![Image from Gyazo](https://i.gyazo.com/987094b8a2c0ec220f19779476c029cb.png)](https://gyazo.com/987094b8a2c0ec220f19779476c029cb)
ログイン後にはヘッダーにログアウトボタンを表示するようにしました。<br>
この画面よりツイートの投稿、すべてのユーザーのツイートの確認、他ユーザーのツイートへのいいね機能、自分のツイートがいいねされた際の通知を確認することが出来ます。<br><br>

## ツイートの投稿
[![Image from Gyazo](https://i.gyazo.com/ac36ad5c01800a7d4bd08d6927978195.gif)](https://gyazo.com/ac36ad5c01800a7d4bd08d6927978195)
ツイートの投稿にはAjaxを用いて実装し、読み込みなく表示出来るようにしました。<br><br>

## いいね機能
[![Image from Gyazo](https://i.gyazo.com/ee3feada75bf6b947a1c860fd81a4451.gif)](https://gyazo.com/ee3feada75bf6b947a1c860fd81a4451)
自分以外のユーザーのツイートに対していいねをつけることが出来ます。<br>
ついたいいねはカウントされ再度クリックすることで取り消しする事も可能にしました。<br><br>

## マイページ機能
[![Image from Gyazo](https://i.gyazo.com/eee8904c5433cd174e3a78ea26aab470.png)](https://gyazo.com/eee8904c5433cd174e3a78ea26aab470)
トップページのマイページへのボタンか、投稿したツイートのユーザー名をクリックすることでそのユーザーのマイページに遷移することが出来ます。<br>
マイページでは登録時に設定したアカウントidの確認と登録日の確認が出来ます。<br>
また、ページのユーザーが今までに投稿した全てのツイートの確認も可能です。<br><br>

# 工夫したポイント
* jQueryを使い、カリキュラム外の知識であったいいね機能を作成しました。
* 表示をコンパクトにまとめたかったので、トップページにはツイート一覧と通知のみと必要最低限の情報を表示しました。<br>
* ファビコンを設定してみました。[![Image from Gyazo](https://i.gyazo.com/4574160c2eb47463be2542b8156d7466.png)](https://gyazo.com/4574160c2eb47463be2542b8156d7466)<br>
favicon.cc を使用し作成致しました。
<br><br>


# 課題や今後実装したい機能
* ユーザーをフォローしフォローしたユーザーのツイートのみを表示する機能
* マイページに画像の設定を行い、ユーザーごとのオリジナリティを出せる機能
* 投稿したツイートの削除機能
<br><br>
# DB設計
## ER図
[![Image from Gyazo](https://i.gyazo.com/470cd4337832e677b5f046a96b6a135b.png)](https://gyazo.com/470cd4337832e677b5f046a96b6a135b)

## usersテーブル<br>

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| account_id         | string | null: false |
| account_name       | string | null: false |
| password           | string | null: false |
| encrypted_password | string | null: false |

<br>

### Association
- has_many :articles
- has_many :likes
- has_many :notifications
<br><br>
## articlesテーブル
| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| tweet              | string | null: false |

<br>

### Association
- belongs_to :user
- has_many :likes
- has_many :notifications

<br>

## likesテーブル
| Column    | Type       | Options                        |
| --------- | ---------- | ------------------------------ |
| user      | references | null: false, foreign_key: true |
| article   | references | null: false, foreign_key: true |

<br>

### Association
- belongs_to :user
- belongs_to :article

<br>

## notificationsテーブル
| Column      | Type       | Options                         |
| ----------- | ---------- | ------------------------------- |
| notifying   | references | foreign_key: {to_table: :users} |
| notified_by | references | foreign_key: {to_table: :users} |
| article     | references | foreign_key: true               |

<br>

### Association
- belongs_to :user 
- belongs_to :article
<br><br>

# ローカルでの動作方法
```
% git clone https://github.com/ryo5515/minitweet-35521.git  
% cd minitweet-35521
% bundle install
% rails db:create
% rails db:migrate
$ rails s
　→　http://localhost:3000
```
<br>

# 使用技術(開発環境)
* フロントエンド: HTML,CSS,JavaScript,JQuery,Ajax
* バックエンド: Ruby,Ruby on Rails
* データベース: MySQL
* ソース管理: GitHub,GitHubDesktop
* テスト: RSpec
* エディタ :VSCode<br><br>