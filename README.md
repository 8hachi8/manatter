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
|store|string|null: false|
|email|string|null: false|
|password|integer|null: false|
|image|string|null: false|
|profile|string|null: false|
### Association
- has_many :messages
- has_many :groups, through: :group_users
- has_many :group_users
- has_many :report_users
- has_many :reports, through: :report_users

## reportsテーブル
|Column|Type|Options|
|------|----|-------|
|date|date|null: false|
|job|references|null: false, foreign_key: true|
|hour|references|null: false, foreign_key: true|
|impression|text||
|user|references|null: false, foreign_key: true|
### Association
- has_many :comments
- belongs_to :job
- belongs_to :hour
- belongs_to :user
- has_many :report_users
- has_many :users, through: :report_users

## report_usersテーブル
|Column|Type|Options|
|------|----|-------|
|report|references|null: false, foreign_key: true|
|user|references|null: false, foreign_key: true|
### Association
- belongs_to :report
- belongs_to :user

## jobsテーブル
|Column|Type|Options|
|------|----|-------|
|job|string|null: false|
### Association
- has_many :reports

## hoursテーブル
|Column|Type|Options|
|------|----|-------|
|hour|float|null: false|
### Association
- has_many :reports

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
|text|text|null: false|
|user|references|null: false|
|report|references|null: false|
### Association
- belongs_to :user
- belongs_to :report

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
