class CreateOptions < ActiveRecord::Migration
  def self.up
    create_table :options do |t|

      t.timestamps
      t.integer :ballot_item_id
      t.string :text
    end
  end

  def self.down
    drop_table :options
  end
end
