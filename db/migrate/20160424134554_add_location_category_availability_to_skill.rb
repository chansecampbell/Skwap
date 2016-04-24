class AddLocationCategoryAvailabilityToSkill < ActiveRecord::Migration
  def change
    add_column :skills, :location, :string
    add_column :skills, :category, :string
    add_column :skills, :availability, :string
  end
end
