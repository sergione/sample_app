class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :name
      t.string :email

      t.timestamps
    end
    add_index :microposts, :user_id
  end

  def self.down
    drop_table :users
  end
end
