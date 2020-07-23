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
|phone|string|null: false|

### Association
- has_many :posts
- has_many :addresses, dependent: :destroy
- has_many :cards, dependent: :destroy

## postsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|about|text|null: false|
|size|string|null: false|
|status|string|null: false|
|fee|string|null: false|
|days|string|null: false|
|price|integer|null: false|
|brand|string||
|user_id|integer|null: false, foreign_key: true|
|category_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :category
- has_many :images, dependent: :destroy


## imagesテーブル
|Column|Type|Options|
|------|----|-------|
|item|text|null: false|
|post_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :post



## categoriesテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|ancestry|string|null: false|


### Association
- has_many :posts, dependent: :destroy


## addressesテーブル
|Column|Type|Options|
|------|----|-------|
|postal_code|string|null: false|
|prefecture_id(active_hash)|integer|null: false|
|city|string|null: false|
|street|string|

### Association
- belongs_to :user


## cardsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|token|string|null: false|

### Association
- belongs_to :user