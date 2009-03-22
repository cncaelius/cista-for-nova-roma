class CreateBallotItems < ActiveRecord::Migration
  def self.up
    create_table :ballot_items do |t|

      t.timestamps
      t.integer :ballot_id
      t.string :description
    end
  end

  def self.down
    drop_table :ballot_items
  end
end
