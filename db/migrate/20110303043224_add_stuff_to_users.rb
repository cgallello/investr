class AddStuffToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :name, :string
    add_column :users, :pic_url, :string
    add_column :users, :free_money, :decimal
    add_column :users, :invested_money, :decimal
    add_column :users, :analytics_url, :string
  end

  def self.down
    remove_column :users, :name
    remove_column :users, :pic_url
    remove_column :users, :free_money
    remove_column :users, :invested_money
    remove_column :users, :analytics_url
  end
end
