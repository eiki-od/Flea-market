# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false|
|email|string|null: false, unique: true|
|password|string|null: false|
|kanji_family|string|null: false|
|kanji_first|string|null: false|
|kana_family|string|null: false|
|kana_first|string|null: false|
|birth|date|null: false|
|phone|numeric|null: false|

### Association
- has_many :posts
- has_many :cards
- belongs_to :addresses

## postsテーブル
|Column|Type|Options|
|------|----|-------|
|image|text|null: false|
|name|string|null: false|
|about|text|null: false|
|size|string|null: false|
|status|string|null: false|
|fee|string|null: false|
|days|string|null: false|
|price|numeric|null: false|
|brand|string||
|user_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :user
- has_many :categories, through: posts_categories:


## posts_categoriesテーブル
|Column|Type|Options|
|------|----|-------|
|post_id|integer||
|category_id|integer||

### Association
- belongs_to :post
- belongs_to :category



## categoriesテーブル
|Column|Type|Options|
|------|----|-------|
|major|string|null: false|
|middle|string|null: false|
|small|string|null: false|

### Association
- has_many :posts, through: posts_categories:


## addressesテーブル
|Column|Type|Options|
|------|----|-------|
|postal_code|string|null: false|
|prefectural|string|null: false|
|city|string|null: false|
|street|string|

### Association
- belongs_to :user


## cardsテーブル
|Column|Type|Options|
|------|----|-------|
|number|string|null: false|
|month|string|null: false|
|year|string|null: false|
|security|string|null: false|

### Association
- belongs_to :user