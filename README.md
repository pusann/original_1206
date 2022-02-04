# テーブル設計

## users テーブル

| Column             | Type    | Options     |
| -------------------| --------| ------------|
| name               | string  | null: false |
| nickname           | string  | null: false |
| email              | string  | null: false |
| sex                | string  | null: false |
| age                | integer | null: false |
| encrypted_password | string  | null: false |
| category_id        | integer | null: false |

- belong_to :my_pages
- has_many :posts
- has_many :rooms
- has_many :room_users
- has_many :messages

## my_pages テーブル

| Column | Type    | Options     |
| -------| --------| ------------|
| name   | string  | null: false |
| title  | string  | null: false |

- has_one :users
- has_one :posts

##  posts テーブル

| Column        | Type    | Options     |
| --------------| --------| ------------|
| nickname      | string  | null: false |
| title         | string  | null: false |
| text          | text    | null: false |
| sex           | string  | null: false |
| age           | integer | null: false |

- belong_to :users
- belong_to :my_pages

## rooms テーブル

| Column       | Type    | Options     |
| -------------| --------| ------------|
| name         | string  | null: false |

- belong_to :users
- has_many :room_users
- has_many :messages

## room_users テーブル

| Column       | Type       | Options                      |
| -------------| -----------| -----------------------------|
| nickname     | string     | null: false,foreign_key:true |
| room         | references | null: false,foreign_key:true |

- has_many :room_users
- has_many :users, through: :room_users
- has_many :messages

## messages テーブル

| Column       | Type       | Options                         |
| -------------| -----------| --------------------------------|
| content      | string     |                                 |
| nickname     | string     | null: false,foreign_key:true    |
| room         | references | null: false,foreign_key:true    |

- belongs_to :room
- belongs_to :user