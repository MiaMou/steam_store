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

rails g model steam appid:integer:index name:string release_date:date english:string developer:string publisher:string platforms:string required_age:string categories:string genres:string steamspy_tags:string achievements:integer positive_ratings:integer negative_ratings:integer average_playtime:integer median_playtime:integer owners:string price:'decimal{14,4}' detailed_description:text about_the_game:text short_description:text header_image:string screenshots:json background:string movies:json

rails g model users nickname:string username:string password_digest:string

rails g model order steam_id:integer:index status:string user_id:integer:index


opera_steps

rails db:create
rails db:migrate
rails db:seed
rails import:data
rails server