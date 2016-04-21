1000.times do
     Book.create(
        name: Faker::Book.Title,
        description: Faker::Hipster.sentence(10),
        price: Faker::Number.decimal(2),
        author_id: Faker::Number.between(1,100),
        img_url: Faker::Avatar.image
      ) 
end 

User.create!(name:  "Klaudia",
             email: "kp.elblag@wp.pl",
             password:              "123456",
             password_confirmation: "123456",
             admin: true,
             activated: true,
             activated_at: Time.zone.now)

100.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password,
               activated: true,
               activated_at: Time.zone.now)
end
