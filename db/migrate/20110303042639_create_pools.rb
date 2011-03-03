class CreatePools < ActiveRecord::Migration
  def self.up
    create_table :pools do |t|
      t.string :category
      t.decimal :free_money
      t.decimal :invested_money
      t.decimal :return_rate
      t.string :analytics_url

      t.timestamps
    end
  end

  def self.down
    drop_table :pools
  end
end
