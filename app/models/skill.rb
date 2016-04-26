class Skill < ActiveRecord::Base
  belongs_to :user
  has_many :connections
  acts_as_commentable

  
  CATEGORIES = {
    "creative": "artdrawingandpainting.png",
    "business": "businessadvice.png",
    "writing": "creativewriting.png",
    "food": "drinkandfood.png",
    "education": "educationandlearning.png",
    "film": "filmvideoandacting.png",
    "handyman": "handyman.png",
    "music": "musiclessons.png",
    "photography": "photographylessons.png",
    "technology": "techcodinganddesign.png"
  }
    
end
