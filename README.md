# README
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
