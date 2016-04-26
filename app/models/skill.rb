class Skill < ActiveRecord::Base
  belongs_to :user
  has_many :connections
  acts_as_commentable

  
  CATEGORIES = {
    "Creative Arts": "artdrawingandpainting.png",
    "Business": "businessadvice.png",
    "Writing": "creativewriting.png",
    "Food & Cooking": "drinkandfood.png",
    "Education & Learning": "educationandlearning.png",
    "Film & Acting": "filmvideoandacting.png",
    "Handyman": "handyman.png",
    "Music Lessons": "musiclessons.png",
    "Photography Lessons": "photographylessons.png",
    "Tech and Design": "techcodinganddesign.png"
  }
    
end
