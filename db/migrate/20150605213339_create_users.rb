class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :String
      t.string :password
      t.string :String

      t.timestamps null: false
    end
  end
end
