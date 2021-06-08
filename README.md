# アプリ名
## MiniTweet
<br>

# 概要
## フリマアプリの作成に続いて、某ツイートアプリのようなものも作ってみたくなったので簡易版ツイートアプリを制作しました。
ユーザー登録機能、ツイート投稿機能、いいね機能、マイページの表示が行えます。
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
<br><br>
* 2021/6/6現在ではGoogle Chromeでの使用を想定しております

# 制作背景（意図）
カリキュラムにない知識で簡単に何か一言をつぶやくことが出来るアプリケーションを作成してみたいと思い、制作しました。  
<br>

# DEMO
## トップページ
[![Image from Gyazo](https://i.gyazo.com/5b89228931fffff5ffb2c56ebed05ee4.png)](https://gyazo.com/5b89228931fffff5ffb2c56ebed05ee4)
画面上部のヘッダーにはトップページのリンクを貼り、下部のフッターにはCopyrightを表示してみるようにしました。<br><br>

## ユーザー登録画面
[![Image from Gyazo](https://i.gyazo.com/4ff29ee848977944ab86eca2a5089f0a.png)](https://gyazo.com/4ff29ee848977944ab86eca2a5089f0a)
新規登録画面です。<br><br>

## ログイン画面
[![Image from Gyazo](https://i.gyazo.com/63e41f014565fade91199a1270e54784.png)](https://gyazo.com/63e41f014565fade91199a1270e54784)
ログイン画面です。<br><br>

## ログイン後のトップページ
[![Image from Gyazo](https://i.gyazo.com/ef274a1cc3490d08e4b51c3fcde054f5.png)](https://gyazo.com/ef274a1cc3490d08e4b51c3fcde054f5)
ログイン後にはヘッダーにログアウトボタンを表示するようにしました。<br>
この画面よりツイートの投稿、すべてのユーザーのツイートの確認、他ユーザーのツイートへのいいね機能、自分のツイートがいいねされた際の通知を確認することが出来ます。<br><br>

## ツイートの投稿
[![Image from Gyazo](https://i.gyazo.com/d4e3fac94b82fa4048f80e54f3d581b1.gif)](https://gyazo.com/d4e3fac94b82fa4048f80e54f3d581b1)
ツイートの投稿にはAjaxを用いて実装し、ストレスなく表示出来るようにしました。<br><br>

## いいね機能
[![Image from Gyazo](https://i.gyazo.com/f77f787cc0da1e24bf45ee2ca521419e.gif)](https://gyazo.com/f77f787cc0da1e24bf45ee2ca521419e)
自分以外のユーザーのツイートに対していいねをつけることが出来ます。<br>
ついたいいねはカウントされ再度クリックすることで取り消しする事も可能にしました。<br><br>

## マイページ機能
[![Image from Gyazo](https://i.gyazo.com/3a92df1bfd2d1e43aed8b6b7084c6623.png)](https://gyazo.com/3a92df1bfd2d1e43aed8b6b7084c6623)
トップページのマイページへのボタンか、投稿したツイートのユーザー名をクリックすることでそのユーザーのマイページに遷移することが出来ます。<br>
マイページでは登録時に設定したアカウントidの確認と登録日の確認が出来ます。<br>
また、ページのユーザーが今までに投稿した全てのツイートの確認も可能です。<br><br>

# 工夫したポイント
* jQueryを使い、カリキュラム外の知識であったいいね機能を作成しました。
* 表示をコンパクトにまとめたかったのでツイートを30文字以内に設定し、簡単なツイートを投稿出来るようにしました。<br>
* ファビコンを設定してみました。[![Image from Gyazo](https://i.gyazo.com/4574160c2eb47463be2542b8156d7466.png)](https://gyazo.com/4574160c2eb47463be2542b8156d7466)<br>
favicon.cc を使用し作成致しました。
<br><br>

# 使用技術(開発環境)
## バックエンド
Ruby,Ruby on Rails<br>
## フロントエンド
HTML,CSS,JavaScript,JQuery,Ajax<br>
## データベース
MySQL<br>
## ソース管理
GitHub,GitHubDesktop<br>
## テスト
RSpec<br>
## エディタ
VSCode<br><br>

# 課題や今後実装したい機能
* ユーザーをフォローしフォローしたユーザーのツイートのみを表示する機能
* マイページに画像の設定を行い、ユーザーごとのオリジナリティを出せる機能
<br><br>
# DB設計
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