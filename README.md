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
- has_many :rooms, through: :entries
- has_many :entries

## reportsテーブル
|Column|Type|Options|
|------|----|-------|
|working_day|datetime|null: false|
|working_content|string|null: false|
|working_time|integer|null: false|
|impression|text||
### Association
- belongs_to :user
- has_many :comments

## commentsテーブル
|Column|Type|Options|
|------|----|-------|
|text|text|null: false|
|user|referencess|null: false|
|report|referencess|null: false|
### Association
- belongs_to :user
- belongs_to :report

## roomsテーブル
|Column|Type|Options|
|------|----|-------|
|user|references|null: false|
### Association
- has_many :messages
- has_many :users, through: :entries
- has_many :entries

## messagesテーブル
|Column|Type|Options|
|------|----|-------|
|message_content|text||
|message_image|string||
|room|references|null: false, foreign_key: true|
|user|references|null: false, foreign_key: true|
### Association
- belongs_to :room
- belongs_to :user

## entriesテーブル
|Column|Type|Options|
|------|----|-------|
|room|references|null: false, foreign_key: true|
|user|references|null: false, foreign_key: true|
### Association
- belongs_to :room
- belongs_to :user


* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
