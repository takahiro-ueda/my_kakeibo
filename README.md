# アプリ名
タイトル：　Balance Sheet
# アプリ概要
機能：収支の設定・登録・一覧表示、カレンダーに予定記入<br/>
収支の設定（科目）・登録（年月、金額）を行い、月単位・年間単位で確認することができる。月は一覧表示であるが、年間は縦棒グラフを用いて表示している。
また、スケジュールを管理しやすくするためにカレンダーを設置しているアプリである。

# 企画背景
前職が金融機関で働いていることもあったため、お金の入手金を簡単に登録できて可視化できるアプリがあればと思い作成しました。

# 開発環境
言語：HTML・Ruby・Ruby on Rails・JavaScript・jQuery・SQL・Git・ GitHub・SCSS

# 使い方
ユーザー登録、ログイン（ユーザー登録されていないとアプリを使えないようになっている）<br/>
必要事項（新規登録：名前,Eメール,パスワード,確認パスワード / ログイン：Eメール,パスワード）<br/>
（新規登録画面）<br/>
![新規登録画面](https://i.gyazo.com/d20d191cffde802ac781795e0cac8722.jpg)

（ログイン画面）<br/>
![ログイン画面](https://i.gyazo.com/6d09caf6e690e3f4a48e7f58f65f36c4.jpg)

トップ画面<br/>
![トップ画面](https://i.gyazo.com/7e2d2d082da1575b0cbae8ca8b293e0f.png)

# 家計簿の手順
科目設定（収入・固定費・変動費） → 収支登録（収入・固定費・変動費） → 収支確認（月次・年間）　<br/>
科目設定<br/>
収入・固定費・変動費の設定を行う

収支登録<br/>
収入・固定費・変動費の登録年月、金額を登録

収支確認<br/>
月次一覧表示<br/>
![月次一覧](https://i.gyazo.com/d7e3e44819610a12c7450eeb7077aa58.jpg)
年間グラフ表示<br/>
![年間グラフ](https://i.gyazo.com/8032615fe4dfdad168e8217a0140c8c4.png)
![年間グラフ](https://i.gyazo.com/a7e897f654a27f9af5c1fc90703d59e5.png)

# カレンダーの手順
手順：ユーザー登録orログイン→カレンダー → New Meeting → 予定登録
カレンダー<br/>
![カレンダー](https://i.gyazo.com/fa5d1280215bc247650c33ccdff79e05.png)

予定記入<br/>
![予定](https://i.gyazo.com/25ddfff022b2270e3f27ee64ba33eaa4.png)

カレンダー更新後<br/>
![カレンダー更新後](https://i.gyazo.com/645ed0fbebd5a811898cb9d69a335f85.png)

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
