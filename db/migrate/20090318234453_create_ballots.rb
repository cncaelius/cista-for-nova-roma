class CreateBallots < ActiveRecord::Migration
  def self.up
    create_table :ballots do |t|
      t.integer :election_id
      t.text :issue

      t.timestamps
    end
  end

  def self.down
    drop_table :ballots
  end
end
