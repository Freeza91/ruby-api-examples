# bundle exec rake db:create_migration NAME=create_users
# it will not be generate schema.rb

class CreateUsers < ActiveRecord::Migration
  def change

    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :password

      t.timestamps null: false # ignore warning
    end

  end
end
