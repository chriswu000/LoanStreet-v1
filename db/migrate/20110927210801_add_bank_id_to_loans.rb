class AddBankIdToLoans < ActiveRecord::Migration
  def self.up
    add_column :loans, :bank_id, :integer
  end

  def self.down
    remove_column :loans, :bank_id
  end
end
