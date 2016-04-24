class Skill < ActiveRecord::Base
  belongs_to :user
  has_many :connections
  acts_as_commentable

end
