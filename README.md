# Journal
 
 日記投稿アプリ 


# Overview
日記を投稿できるアプリです。
文章の投稿及び画像の投稿ができます。
また、日記の削除・編集も可能です。

日記の編集
[![Image from Gyazo](https://i.gyazo.com/602efbc2df6847cf775876d2bd438aec.gif)](https://gyazo.com/602efbc2df6847cf775876d2bd438aec)

日記の削除
[![Image from Gyazo](https://i.gyazo.com/2cb0e6d29fa8fc933f098b6e622d3f34.gif)](https://gyazo.com/2cb0e6d29fa8fc933f098b6e622d3f34)

画像の投稿
[![Image from Gyazo](https://i.gyazo.com/4c812c7db497fe8be9ec6c73e10ce26b.gif)](https://gyazo.com/4c812c7db497fe8be9ec6c73e10ce26b)

# Deploy
URL: https://aqueous-atoll-30025.herokuapp.com/

# Background

日記を書くのが苦手なため、日記を簡単に投稿することができるようなアプリを作成

# DEMO
 
[![Image from Gyazo](https://i.gyazo.com/8ab017f0f5e639454ae115b12a89ee48.gif)](https://gyazo.com/8ab017f0f5e639454ae115b12a89ee48)
 
# Requirement
 
- gem 'haml-rails'
- gem 'font-awesome-sass'
- gem 'jquery-rails'
- gem 'rename'
- gem 'carrierwave'
- gem 'mini_magick'

# Device Pointo

見た目の見やすさや投稿のしやすさを意識しました。

# Development environment
- rails 6.0.2
- ruby 2.6.3
- mysql2 0.3.18

# Task
今後の課題はカレンダーの機能や画像削除機能の実装。
ユーザー登録機能の実装など。

# DBdesign

| Column	 | Type     | Options   |
|:---------|:--------:|:---------:|
| text     | string   |           |



| Column	 |   Type    |   Options                        |
|:---------|:-------- :|:--------------------------------:|
| src      | string    | null:false                       |
| diary_id | references| null: false, foreign_key: true   |






