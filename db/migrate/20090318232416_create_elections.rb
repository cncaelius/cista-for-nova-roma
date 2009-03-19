class CreateElections < ActiveRecord::Migration
  def self.up
    create_table :elections do |t|
      t.string :comitia
      t.string :presmag
      t.datetime :startdate
      t.datetime :enddate
      t.integer :centprae

      t.timestamps
    end
  end

  def self.down
    drop_table :elections
  end
end
