# テーブル設計

## users テーブル


| Column             | Type                | Options                   |
|--------------------|---------------------|---------------------------|
| email              | string              | null: false, unique: true |
| encrypted_password | string              | null: false               |
| name               | string              | null: false               |

### Association
has_many :posts
has_many :comments

## posts テーブル名

| Column                | Type                | Options                         |
|-----------------------|---------------------|---------------------------------|
| place                 | string              | null: false                     |
| datetime              | datetime            | null: false                     |
| count                 | integer             | null: false                     |
| weight                | integer             | null: false                     |
| my_weight             | integer             | null: false                     |
| now_place             | string              | null: false                     |
| now_datetime          | datetime            | null: false                     |
| now_count             | integer             | null: false                     |
| now_weight            | integer             | null: false                     |
### Association
belongs_to :user
has_many :comments


## comments テーブル


| Column             | Type                | Options                         |
|--------------------|---------------------|---------------------------------|
| text               | string              | null: false                     |
| user_id            | references          | null: false,foreign_key: true   |
| post_id            | references          | null: false,foreign_key: true   |


### Association
belongs_to :post
belongs_to :user