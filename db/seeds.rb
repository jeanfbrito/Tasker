# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "========= >>>> Creating basic Users\n"
10.times do |i|
  User.create!(
    email: "user_example_#{i}@test.com",
    first_name: 'User',
    last_name: "Example #{i}",
    password: '123123123'
  )
end

puts "========= >>>> Creating basic Projects\n"
10.times do |i|
  project = Project.create!(
    title: "Project #{i}"
  )

  # Add people to projects
  UserProject.create!(project: project, user: User.all.sample)
end
