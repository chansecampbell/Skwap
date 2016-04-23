class CreateConnections < ActiveRecord::Migration
  def change
    create_table :connections do |t|
      t.references :skill, index: true, foreign_key: true
      t.date :meetup_time
      t.text :details
      t.string :status
      t.integer :sender_id
      t.integer :receiver_id

      t.timestamps null: false
    end
  end
end
