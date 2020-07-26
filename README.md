# アプリ名
Manatter(マナター)
management(管理) + twitter(つぶやき)

# 概要
このアプリでは、日々の仕事の業務内容をレポート形式で入力し、それを個人個人でグラフとして見える化できるようにしております。
それによって客観的に業務内容を確認できるので、各々が何にどれだけの時間をかけているか知ることができ、業務改善のヒントとすることができます。

# 制作背景(意図)
・私自身やってきた仕事が経理系だったので、仕事の中での自分が感じたことや気になったことを形にしたいと思いました。
・経理業務は営業とかと違い成果が見えないので、周りから見たら何をしているか理解しづらいという問題があったので見える化したいと思いました。
・1日の作業を終えた際に、何にどれだけ時間をかけたかを集計し、グラフ化することで、
業務内容を客観的に見ることができる、それにより差別化ができるので評価などの基準の参考になると思い作成しております。

# 本番環境
https://manatter.herokuapp.com/

# 工夫したポイント
・jQueryで選択した場所の色を変えることができたこと。
・入力フォームにカレンダーから選択し、日付という形でデータベースに保管できたこと。
・プルダウン形式でデータベースの値を選択できるようになったこと。
・Gemのchartkickでグラフを導入できたこと。

# 使用技術(開発環境)
Haml,SCSS,jQuery,Ruby,RubyOnRails,MySQL,HEROKU

# 課題や今後実装したい機能
グラフを個人毎で日毎、週毎、月毎など細かく集計できるようにしたい。
1日毎のグラフにはコメント機能を搭載させてフィードバックする形にしていきたい。

# manatter DB設計

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false, index|
|email|string|null: false, unique: true, index|
|password|string|null: false|
|store|string||
|introduction|text||
|avatar|string||
### Association
- has_many :messages
- has_many :groups, through: :group_users
- has_many :group_users
- has_many :reports
- has_many :comments

## reportsテーブル
|Column|Type|Options|
|------|----|-------|
|due_on|date|null: false|
|job|string|null: false|
|hour|float|null: false|
|impression|string||
|user|references|null: false, foreign_key: true|
### Association
- belongs_to :user
- has_many :comments

## groupsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
### Association
- has_many :messages
- has_many :users, through: :group_users
- has_many :group_users

## messagesテーブル
|Column|Type|Options|
|------|----|-------|
|content|string||
|image|string||
|group|references|null: false, foreign_key: true|
|user|references|null: false, foreign_key: true|
### Association
- belongs_to :group
- belongs_to :user

## group_usersテーブル
|Column|Type|Options|
|------|----|-------|
|group|references|null: false, foreign_key: true|
|user|references|null: false, foreign_key: true|
### Association
- belongs_to :group
- belongs_to :user

## commentsテーブル
|Column|Type|Options|
|------|----|-------|
|content|string||
|image|string||
|report|references|null: false, foreign_key: true|
|user|references|null: false, foreign_key: true|
### Association
- belongs_to :user
- belongs_to :report
