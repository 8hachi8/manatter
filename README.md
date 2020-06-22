# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation
# manatter DB設計

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|email|string|null: false|
|password|integer|null: false|
|image|string|null: false|
|profile|string|null: false|
### Association
- has_many :messages
- has_many :groups, through: :group_users
- has_many :group_users
- has_many :reports

## reportsテーブル
|Column|Type|Options|
|------|----|-------|
|impression|text||
|workdate|references|null: false, foreign_key: true|
|job|references|null: false, foreign_key: true|
|hour|references|null: false, foreign_key: true|
### Association
- belongs_to :user
- has_many :comments
- belongs_to :date
- belongs_to :job
- belongs_to :hour

## workdatesテーブル
|Column|Type|Options|
|------|----|-------|
|date|date|null: false|
### Association
- has_many :reports

## jobsテーブル
|Column|Type|Options|
|------|----|-------|
|job|integer|null: false|
### Association
- has_many :reports

## hoursテーブル
|Column|Type|Options|
|------|----|-------|
|hour|integer|null: false|
### Association
- has_many :reports

## commentsテーブル
|Column|Type|Options|
|------|----|-------|
|text|text|null: false|
|user|references|null: false|
|report|references|null: false|
### Association
- belongs_to :user
- belongs_to :report

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
|message_content|text||
|message_image|string||
|room|references|null: false, foreign_key: true|
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


* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
