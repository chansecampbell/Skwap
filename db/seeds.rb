Connection.destroy_all
Skill.destroy_all
User.destroy_all

u1 = User.create!(email: "bob@bob.com", 
                  password: "password", 
                  first_name: "Bob", 
                  last_name: "Brown", 
                  profile_picture: "http://fillmurray.com/250/250", 
                  location: "East London",
                  credits: 10)
            
u2 = User.create!(email: "chanse@chanse.com", 
                  password: "password", 
                  first_name: "Chanse", 
                  last_name: "Campbell", 
                  profile_picture: "http://fillmurray.com/250/250", 
                  location: "East London",
                  credits: 10)

s1 = u1.skills.create!(title: "Ukulele Lesson Beginner/Intermediate ",
                         description: "I'm a fairly experienced musician having played multiple instruments since the age of 9. I've noticed a rise in popularity for one of my favourite instruments, the Ukulele, so I thought I would offer some 1 hour lessons for anyone who's wanting to pick one up or learn some new tricks.",
                         response_time: "Within 3 hours",
                         location: "East London",
                         category: "Music",
                         availability: "Evening")

c1 = Connection.create!(skill_id: s1.id,
                         meetup_time: Time.now + 1.week.to_i,
                         details: "Can we do this at around 6pm on the day?",
                         sender_id: u2.id,
                         receiver_id: u1.id)