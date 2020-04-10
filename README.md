# README

##アプリ概要<br/>
月、年単位の収支を登録することができ、縦棒グラフで表示。また、スケジュールを管理しやすくするためにカレンダーを設置

##企画背景<br/>
前職が金融機関で働いていることもあったため、お金の入手金を簡単に登録できて可視化できるアプリがあればと思い作成しました。

##開発環境<br/>
言語：HTML・Ruby・Ruby on Rails・JavaScript・jQuery・SQL・Git・ GitHub・SCSS

##使い方<br/>

手順：ユーザー登録orログイン → 科目設定（収入・固定費・変動費） → 収支登録（収入・固定費・変動費） → 収支確認（月次・年間）　<br/>
手順：ユーザー登録orログイン→カレンダー → New Meeting → 予定登録

ユーザー登録、ログイン（ユーザー登録されていないとアプリを使えないようになっている）<br/>
#（新規登録画面）<br/>


#（ログイン画面）<br/>
!(https://i.gyazo.com/6d09caf6e690e3f4a48e7f58f65f36c4.jpg)

必要事項（新規登録：名前,Eメール,パスワード,確認パスワード / ログイン：Eメール,パスワード）



 #科目設定<br/>
 収入・固定費・変動費の設定を行う<br/>


 #収支登録<br/>
 収入・固定費・変動費の登録年月、金額を登録<br/>


 #収支確認<br/>
 月次一覧表示<br/>

 年間グラフ表示<br/>



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
