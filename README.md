# README

## incomesテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|description|string
|timestamps

### Association
- has_many :income_values, dependent: :destroy
 

 ## fixedcostsテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|description|string
|timestamps

### Association
- has_many :fixedcost_values, dependent: :destroy


## variablecostsテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|description|string
|timestamps

### Association
- has_many :variablecost_values, dependent: :destroy


## income_valuesテーブル

|Column|Type|Options|
|------|----|-------|
|income_id|integer|null: false|
|year_month|date
|value|integer
|description|string
|timestamps

## fixedcost_valuesテーブル

|Column|Type|Options|
|------|----|-------|
|fixedcost_id|integer|null: false|
|year_month|date
|value|integer
|description|string
|timestamps

## variablecost_valuesテーブル

|Column|Type|Options|
|------|----|-------|
|variablecost_id|integer|null: false|
|year_month|date
|value|integer
|description|string
|timestamps

## usersテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false, add_index: true|
|email|string|null: false, unique: true|

### Association


## meetingsテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|
|start_time|datetime|
|timestamps

### Association