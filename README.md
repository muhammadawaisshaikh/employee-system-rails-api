# employee-system-rails-api
employee registration rails apis

REFRENCE: https://medium.com/otavio-henrique/creating-simple-rest-api-with-rails-5-1ba71b37cad

# 1. creating API only app
rails new library --api -d postgresql -T

# 2. Installing Rspec
group :development, :test do
  gem 'rspec-rails', '~> 3.6'
end

# 3. add factory girl to your gemfile
gem 'factory_girl'

# 4. Setting API Versioning
gem 'versionist'

# 5. Creating version in a namespace in routes.rb
rails generate versionist:new_api_version v1 V1 --path=value:v1

# 6. Creating Models & Controllers under respective version directory

# 7. defining resources in routes.rb
resources :books

# 8. defining CRUD methods in controllers 

# Model Creation Sample (Auto foreign key and association created)
rails g model Product name:string description:text amount:integer admin:references

# Making Controllers and views with scaffold
rails g controller super_admin/admin index show new create edit update destroy

# Model Creation Sample (Auto foreign key and association created)
rails g model Product name:string description:text amount:integer admin:references

# removing columns from table using migration
rails generate migration RemoveAdminIdFromAnimals admin_id:bigint

# add column in table using migration
rails generate migration add_email_to_users email:string

# update column name - rails g migration UpdateColumnVendors
rename_column :table, :old_column, :new_column

# Joins
products = Product.joins(:types)

# update column type to datetime - rails g migration change_date_string_to_datetime
def change
    remove_column :payments, :date
    add_column :payments, :date, :datetime
end

# devise_token_auth: Simple Authentication in Rails API
https://dev.to/risafj/guide-to-devisetokenauth-simple-authentication-in-rails-api-pfj

# App Creation Full MVC Rails
rails new qurbaniapp-dashboard --database=postgresql

# Creating DB
rails db:create

# Devise GEM
https://github.com/plataformatec/devise

# Rolify GEM - Very simple Roles library
https://github.com/RolifyCommunity/rolify

# Model Creation - Devise
rails generate devise Admin (after this add columns extra in migration to make model as your needs)

# Model Creation - Rolify
rails g rolify Role Admin (To manage roles)

# Making Views of the Device created model - Device
rails generate devise:views Admins

# Making Controllers of the Device created model - Device
rails generate devise:controllers admins

# Model Creation Sample (Auto foreign key and association created)
rails g model Product name:string description:text amount:integer admin:references

# Migrations Add for Associations with Foreign Key
adding admin to productsAdmin model as a foreign key

# Migration to Remove Associations of Foreign Key
(rails generate migration RemoveAdminRefToAnimals admin:references)
def change if foreign_key_exists?(:animals, :admins) remove_foreign_key :animals, :admins end end

# Making Controllers and views with scaffold
rails g controller super_admin/admin index show new create edit update destroy

# removing columns from table using migration
rails generate migration RemoveAdminIdFromAnimals admin_id:bigint

# API
controllers > + api

# Api Controllers
rails g controller api/animals index show new create edit update destroy

# Hit Postman
http://localhost:3000/api/animals

# Basic Auth for API only App
https://github.com/lynndylanhurley/devise_token_auth


> So you need the next parameters to access: access-token, client, uid, url
curl -XGET -v -H 'Content-Type: application/json' -H 'access-token: lW1c60hYkRwAinzUqgLfsQ' -H 'client: W_xCQuggzNOVeCnNZbjKFw' -H "uid: email@domain.com" http://domain/api/v1/auth/validate_token