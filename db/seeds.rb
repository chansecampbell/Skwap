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
                        category: "Music & Instruments",
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
                        category: "Tech & Coding",
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
                        category: "Sports & Gym Training",
                        availability: "Morning")

c3 = Connection.create!(skill_id: s3.id,
                         meetup_time: Time.now + 1.week.to_i,
                         details: "I could do with a bit of guidance at my gym as I'm looking to slim down. Can we arrange a meet?",
                         sender_id: u11.id,
                         receiver_id: u9.id)

c4 = Connection.create!(skill_id: s3.id,
                         meetup_time: Time.now,
                         details: "Hey mate. I've been eating too many pizzas lately and could really do with some coaching. Could we do a session so I can get my fitness measured?",
                         sender_id: u1.id,
                         receiver_id: u9.id)

c5 = Connection.create!(skill_id: s3.id,
                         meetup_time: Time.now + 1.week.to_i,
                         details: "Hey. I've never been to a gym before in my life mate, can you give me a beginners session on weightlifting?",
                         sender_id: u2.id,
                         receiver_id: u9.id)

s4 = u11.skills.create!(title: "Creative Writing Mentor",
                       description: "I'm a full time freelance writer and would love to help you with some writing techniques I've picked up over the years, whether you're a beginner or intermediate. Get in touch if you want to have a session.",
                        response_time: "Within an hour",
                        location: "West London",
                        category: "Writing",
                        availability: "Afternoon")

c6 = Connection.create!(skill_id: s4.id,
                         meetup_time: Time.now,
                         details: "Hey, I'm working on a screenplay and would love some writing pointers as I'm new to writing. Would you be up for giving me a bit of guidance?",
                         sender_id: u1.id,
                         receiver_id: u11.id)

c7 = Connection.create!(skill_id: s4.id,
                         meetup_time: Time.now + 1.week.to_i,
                         details: "I'm wanting to improve my writing as I'd like to work as an online journalist. Would you be up for doing a bit of a writing trainee session?",
                         sender_id: u9.id,
                         receiver_id: u11.id)

s5 = u6.skills.create!(title: "IT/Hardware Support Guy",
                       description: "I work as an IT consultant and am willing to spread a little knowledge by helping you out either at home or remotely with any computer troubles. I'm also willing to do some short tutorials on tech-related issues depending on your needs.",
                        response_time: "5-6 hours",
                        location: "East London",
                        category: "Tech & Coding",
                        availability: "Evening")

c8 = Connection.create!(skill_id: s5.id,
                         meetup_time: Time.now + 1.week.to_i,
                         details: "Hey Tim! I'm absolutely rubbish with technology but work as a freelance photographer so would be very keen to look at how to use a few new pieces of editing software. Any chance you have the time to help with this?",
                         sender_id: u7.id,
                         receiver_id: u6.id)

s6 = u7.skills.create!(title: "Photography 101",
                       description: "I'm a freelance photographer willing to share some tips of the trade and help people looking to master the use of a camera! I don't mind if it's a DSLR or even an iPhone, if you want a bit of guidance with angles and lighting then I'm your girl.",
                        response_time: "5-6 hours",
                        location: "East London",
                        category: "Photography & Design",
                        availability: "Morning")

c8 = Connection.create!(skill_id: s6.id,
                         meetup_time: Time.now,
                         details: "Yo! Can I get involved? I've just gotten a new camera for my birthday and haven't got a clue what to do with it. I'd be up for meeting up around Shoreditch and maybe shooting some street art?",
                         sender_id: u1.id,
                         receiver_id: u7.id)

c9 = Connection.create!(skill_id: s6.id,
                         meetup_time: Time.now + 2.week.to_i,
                         details: "Hey Kim! I'd love to learn how to use my phone to take better photos in terms of lighting as I'm quite a keen novice photographer but would like to maybe eventually get a DSLR.",
                         sender_id: u11.id,
                         receiver_id: u7.id)

c10 = Connection.create!(skill_id: s6.id,
                         meetup_time: Time.now,
                         details: "Hi Kim, how are you? I'd love a bit of help using my new DSLR! How long do you think it would take to do a bit of basics stuff? Let me know if you fancy a meetup!",
                         sender_id: u10.id,
                         receiver_id: u7.id)

s7 = u12.skills.create!(title: "Cooking with John - Pasta 101",
                       description: "Hey everyone. I'm not sure if you've seen me about but I'm actually a bit of a big deal within the culinary world. If you're looking to improve your pasta cooking skills I'm willing to do a cooking lesson with you on any pasta dish! Yum!",
                        response_time: "Within a day",
                        location: "West London",
                        category: "Cooking",
                        availability: "Evening")

c11 = Connection.create!(skill_id: s7.id,
                         meetup_time: Time.now + 2.week.to_i,
                         details: "I'm a bit of a rubbish cook so this sounds like a good plan. How about in 2 weeks time?",
                         sender_id: u13.id,
                         receiver_id: u12.id)

c12 = Connection.create!(skill_id: s7.id,
                         meetup_time: Time.now + 1.week.to_i,
                         details: "Hi John, I'm a 5ft 10 single lady looking to spice up my life with a hot new dish. Are you willing to help me serve it up next week?",
                         sender_id: u4.id,
                         receiver_id: u12.id)

s8 = u9.skills.create!(title: "Eating clean and staying lean",
                       description: "I'm a personal trainer willing to offer out my dietrition services to anyone who's looking to eat a little bit cleaner. My time of the day preffered is probably the morning, so shoot me a message if you want to get some guidance!",
                        response_time: "Couple of hours",
                        location: "North London",
                        category: "Cooking",
                        availability: "Morning")

c13 = Connection.create!(skill_id: s8.id,
                         meetup_time: Time.now + 1.week.to_i,
                         details: "Hi Kolo, I'm a 5ft 10 single lady looking to spice up my life with a hot new dish. Are you willing to help me serve it up next week?",
                         sender_id: u4.id,
                         receiver_id: u9.id)

c14 = Connection.create!(skill_id: s8.id,
                         meetup_time: Time.now,
                         details: "Hey are you able to offer some dietry plans this week? Would be keen for a session ASAP as I've just signed up to a new gym in the area.",
                         sender_id: u2.id,
                         receiver_id: u9.id)

# ['Creative Arts', 'Business & Work', 'Writing', 'Cooking', 'Education', 'Film & Acting', 'Handyman', 'Music & Instruments', 'Photography & Design', 'Tech & Coding', 'Sports & Gym Training']

