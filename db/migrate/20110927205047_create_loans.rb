class CreateLoans < ActiveRecord::Migration
  def self.up
    create_table :loans do |t|
      t.string :type
      t.decimal :interest_rate
      t.datetime :maturity_date
      t.string :state

      t.timestamps
    end
  end

  def self.down
    drop_table :loans
  end
end
