Connection.destroy_all
Skill.destroy_all
User.destroy_all

u1 = User.create!(email: "chanse@chanse.com", 
                  password: "password", 
                  first_name: "Chanse", 
                  last_name: "Campbell", 
                  location: "East London",
                  credits: 10)
u1.photo = Rails.root.join("app/assets/images/chanse-sa.jpg").open
u1.save!
            
u2 = User.create!(email: "franklin@franklin.com", 
                  password: "password", 
                  first_name: "Adam", 
                  last_name: "Franklin", 
                  location: "West London",
                  credits: 10)
u2.photo = Rails.root.join("app/assets/images/adam-sa.jpg").open
u2.save!

u3 = User.create!(email: "jamie@jamie.com", 
                  password: "password", 
                  first_name: "Jamie", 
                  last_name: "Lavine", 
                  location: "North London",
                  credits: 10)
u3.photo = Rails.root.join("app/assets/images/jamie-sa.jpg").open
u3.save!

u4 = User.create!(email: "michelle@michelle.com", 
                  password: "password", 
                  first_name: "Michelle", 
                  last_name: "Williams", 
                  location: "West London",
                  credits: 10)
u4.photo = Rails.root.join("app/assets/images/michelle-sa.jpeg").open
u4.save!

u5 = User.create!(email: "susan@susan.com", 
                  password: "password", 
                  first_name: "Susan", 
                  last_name: "Best", 
                  location: "Central London",
                  credits: 10)
u5.photo = Rails.root.join("app/assets/images/susan-sa.jpeg").open
u5.save!

u6 = User.create!(email: "tim@tim.com", 
                  password: "password", 
                  first_name: "Tim", 
                  last_name: "Roberts", 
                  location: "East London",
                  credits: 10)
u6.photo = Rails.root.join("app/assets/images/tim-sa.jpg").open
u6.save!

u7 = User.create!(email: "kim@kim.com", 
                  password: "password", 
                  first_name: "Kim", 
                  last_name: "Stevens", 
                  location: "East London",
                  credits: 10)
u7.photo = Rails.root.join("app/assets/images/kim.jpeg").open
u7.save!

u8 = User.create!(email: "ronald@ronald.com", 
                  password: "password", 
                  first_name: "Ronald", 
                  last_name: "Buckingham", 
                  location: "Central London",
                  credits: 10)
u8.photo = Rails.root.join("app/assets/images/ronald-sa.jpg").open
u8.save!

u9 = User.create!(email: "kolo@kolo.com", 
                  password: "password", 
                  first_name: "Kolo", 
                  last_name: "Akuma", 
                  location: "North London",
                  credits: 10)
u9.photo = Rails.root.join("app/assets/images/kolo-sa.jpg").open
u9.save!

u10 = User.create!(email: "tasha@tasha.com", 
                  password: "password", 
                  first_name: "Tasha", 
                  last_name: "Wright", 
                  location: "West London",
                  credits: 10)
u10.photo = Rails.root.join("app/assets/images/tasha-sa.jpg").open
u10.save!

u11 = User.create!(email: "ella@ella.com", 
                  password: "password", 
                  first_name: "Ella", 
                  last_name: "", 
                  location: "West London",
                  credits: 10)
u11.photo = Rails.root.join("app/assets/images/ella-sa.jpg").open
u11.save!

u12 = User.create!(email: "john@john.com", 
                  password: "password", 
                  first_name: "John", 
                  last_name: "Segar", 
                  location: "West London",
                  credits: 10)
u12.photo = Rails.root.join("app/assets/images/john-sa.jpg").open
u12.save!

u13 = User.create!(email: "alistair@alistair.com", 
                  password: "password", 
                  first_name: "Ali", 
                  last_name: "Hopkins", 
                  location: "East London",
                  credits: 10)
u13.photo = Rails.root.join("app/assets/images/ali-sa.jpg").open
u13.save!

u14 = User.create!(email: "roxanne@roxanne.com", 
                  password: "password", 
                  first_name: "Roxanne", 
                  last_name: "Munday", 
                  location: "Central",
                  credits: 10)
u14.photo = Rails.root.join("app/assets/images/roxanne.jpeg").open
u14.save!


s1 = u1.skills.create!(title: "Ukulele Lessons",
                       description: "I'm a fairly experienced musician having played multiple instruments since the age of 9. I've noticed a rise in popularity for one of my favourite instruments, the Ukulele, so I thought I would offer some 1 hour lessons for anyone who's wanting to pick one up or learn some new tricks.",
                        response_time: "3-4 hours",
                        location: "East London",
                        category: "music",
                        availability: "Evening")

c1 = Connection.create!(skill_id: s1.id,
                         meetup_time: Time.now + 1.week.to_i,
                         details: "Hi mate, can we do this at around 6pm on the day?",
                         sender_id: u6.id,
                         receiver_id: u1.id)

s2 = u1.skills.create!(title: "Front-end Coding Mentor",
                       description: "I'm currently learning to be a Junior Web Developer at General Assembly and have put hundreds of hours into learning to code in the front and back end. I can give beginners some basic front-end coding advice and mentorship.",
                        response_time: "3-4 hours",
                        location: "East London",
                        category: "technology",
                        availability: "Morning")

c2 = Connection.create!(skill_id: s2.id,
                         meetup_time: Time.now + 1.week.to_i,
                         details: "Hey, I'm currently trying to learn a bit online on Codecademy but I need a bit of extra guidance.",
                         sender_id: u5.id,
                         receiver_id: u1.id)

s3 = u9.skills.create!(title: "Gym Buddy/Mentor",
                       description: "I'm a part-time personal training willing to share my excercise and dietry knowledge by coming and buddying up with you for a gym session!",
                        response_time: "Couple of hours",
                        location: "North London",
                        category: "education",
                        availability: "Morning")

# c3 = Connection.create!(skill_id: s2.id,
#                          meetup_time: Time.now + 1.week.to_i,
#                          details: "Hey, I'm currently trying to learn a bit online on Codecademy but I need a bit of extra guidance.",
#                          sender_id: u5.id,
#                          receiver_id: u1.id)





