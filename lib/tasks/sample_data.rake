namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    make_users
    make_microposts
  end
end

def make_users
  admin = User.create!(name: "Example User",
                       email: "example@railstutorial.org",
                       password: "foobar",
                       password_confirmation: "foobar",
                       interests: "being an example",
                       quotes: "'I am an example' - me",
                       gender: "male",
                       hometown: "exampleton" )
  admin.toggle!(:admin)
  99.times do |n|
    name = Faker::Name.name
    email = "example-#{n+1}@railstutorial.org"
    password = "password"
    User.create!(name: name, email: email, password: password,
                 password_confirmation: password)
  end
end

def make_microposts
  users = User.all(limit: 6)
  50.times do
    content = Faker::Lorem.sentence(5)
    users.each { |user| user.microposts.create!(content: content) }
  end
end

def make_relationships
  users = User.all
  user  = users.first
  friended_users = users[2..50]
  friends      = users[3..40]
  friended_users.each { |friended| user.friend!(friended) }
  friends.each      { |friend| friend.friend!(user) }
end
