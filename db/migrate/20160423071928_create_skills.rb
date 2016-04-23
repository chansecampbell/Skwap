class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.string :title
      t.text :description
      t.string :response_time
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
