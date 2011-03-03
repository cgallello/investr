class CreateVotes < ActiveRecord::Migration
  def self.up
    create_table :votes do |t|
      t.string :business_id
      t.integer :points

      t.timestamps
    end
  end

  def self.down
    drop_table :votes
  end
end
