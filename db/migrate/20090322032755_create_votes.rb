class CreateVotes < ActiveRecord::Migration
  def self.up
    create_table :votes do |t|

      t.timestamps
      t.integer :option_id
      t.integer :user_id
    end
  end

  def self.down
    drop_table :votes
  end
end
