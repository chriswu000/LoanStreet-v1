class AddInternalIdToLoans < ActiveRecord::Migration
  def self.up
    add_column :loans, :internal_id, :string
  end

  def self.down
    remove_column :loans, :internal_id
  end
end
