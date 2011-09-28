class AddUserNameToBanks < ActiveRecord::Migration
  def self.up
    add_column :banks, :user_name, :string
    add_index  :banks, :user_name, :unique => true
  end

  def self.down
    remove_column :banks, :user_name
  end
end
