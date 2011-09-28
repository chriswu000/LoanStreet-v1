class CreateBanks < ActiveRecord::Migration
  def self.up
    create_table :banks do |t|
      t.string :name

      t.timestamps
    end

    add_index :banks, :name, :unique => true
  end

  def self.down
    drop_table :banks
  end
end
