class CreatePairings < ActiveRecord::Migration
  def self.up
    create_table :pairings do |t|
      t.integer :employee_id
      t.integer :pair_id
      t.integer :pairing_frequency

      t.timestamps
    end
  end

  def self.down
    drop_table :pairings
  end
end
