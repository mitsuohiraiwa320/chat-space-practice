# README



## groups_usersテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :group
- belongs_to :user

#####　usersテーブル
has_many :groups_users
has_many :groups, through: groups_users
has_many :messages

######　groupsテーブル
has_many :groups_users
has_many :users, through: groups_users
has_many :messages