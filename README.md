# README

## usersテーブル

|  Colum    |  Type  | Options      |
| --------  | ------ | ------------ |
| email     | string | null: false  |
| password  | string | null: false  |
| name      | string | null: false  |
| profile   | text   | null: false  |
| occupation| text   | null: false  |
| position  | text   | null: false  |

### Association

- has_many :comments
- has_many :prototypes

## commentsテーブル

|  Colum    |  Type      | Options      |
| --------  | ---------- | ------------ |
| text      | text       | null: false  |
| user      | references |              |
| prototype | references |              |

### Association
- belongs_to :comments
- belongs_to :prototypes

## prototypesテーブル

|  Colum     |  Type      | Options              |
| ---------- | ---------- | -------------------- 
| title      | string     | null: false          |
| catch_copy | text       | null: false          |
| concept    | text       | null: false          |
| user       | references |                      |

### Association
- belongs_to :users
- has_many :comments
