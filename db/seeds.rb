User.create!(age: 12,
             name:  "Example User",
             email: "gtexample@railstutorial.org",
             password:              "foobar",
             password_confirmation: "foobar",
             admin: true)

99.times do |n|
  name  = Faker::Name.name
  email = "gtexample-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(age: age,
               name:  name,
               email: email,
               password:              password,
               password_confirmation: password)
end