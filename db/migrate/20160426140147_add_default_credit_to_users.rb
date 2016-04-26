class AddDefaultCreditToUsers < ActiveRecord::Migration
  def change
    change_column :users, :credits, :integer, :default => 1
  end
end
