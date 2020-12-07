# README for the  steam_store > #  
Ruby 2.6.3  Rails 6.0.3.4
A live version is deployed on Heroku, and can be accessed using the following link:
https://stark-retreat-02290.herokuapp.com/
You can use these account details to log in
Admin - admin/admin
Normal user - MiaMou/123456

# STEAM STORE
This is a Ruby on Rails app. 
This is an online game mall dedicated to selling steam games to realize the functions of normal users’ registration and login, product search, search result display, single product detailed information display, and order entry. Administrator user view all orders, view user details and manage them, and use different charts to display game sales and game statistics such as positive rate and negative rate.
The data comes from https://www.kaggle.com/nikdavis/steam-store-games?select=steamspy_tag_data.csv .
This data set provides information about various aspects of the games in the store, such as game types and estimated number of owners. I selected three files of the data set, including steam.csv, steam_description_data.csv and steam_media_data.csv. The first csv file is the main file that includes all games on Steam, each line has a unique appid, the second file is the supplementary information of the game, and the third file is the image link of the game. These three files are associated with appid.

## Charts
ECharts are used for generating charts. Only the admin user can see the relevant charts on the Statistics page, view the sales of each game, and the positive and negative rates of the game. Normal users and visitors do not have permission to view the chart.

## Move to Postgresql Locally
While generating JSON the SQL language differences between SQLite3 and Postgresql made it necessary to shift local development to Postgresql. Making changes, and then pushing them to Heroku takes too long (4-5 minutes each cycle due to recompiling of assets), so running Postgresql locally is important.
In order to do this with Postgresql, you need to (a) set up a database to use, (b) assign an 'owner' and password for the database, whose details you put into the config/database.yml file, then you can (c) run your migrations and any rake tasks to seed the database, (d) change the gemfile to use 'pg' gem for development, test, and production and then run 'bundle install'. Now you can start to work with Postgresql locally and remotely. 

## Bootstrap
Use Bootstrap to clean up the look and feel of the application. 

## BCrypt
Use BCrypt encryption in user password to increase safety measures.

## Test
Incorporate TDD tests(in the form of Test: Unit). Rails generates tests by default with Minitest. 

## running the application locally ##
1. bundle install
2. rails db:create
3. rails db:migrate
4. rails db:seed
5. rails import:data
6. rails server

## These are the parts that are not working correctly ##
1. No map is displayed in the application, because there is no country information nor latitude and longitude information in the source data, it cannot be displayed on a map. I have tried to find other data sets, but I still can’t find more suitable data due to lack of time.

2. I want to provide three different levels of access, admin, normal user, and visitor. However, because of the imperfect purchasing function, the current difference between normal users and visitors is not obvious.