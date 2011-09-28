class AddIndexToLoans < ActiveRecord::Migration
  def self.up
    add_index :loans, [:bank_id, :internal_id], :unique => true
  end

  def self.down
    remove_index :loans,  :columns => [:bank_id, :internal_id]
  end
end
