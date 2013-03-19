# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

States.create([
  { name: "Happy Grandpa Asylum", goal: 150, description: "The Happy Grandpa Asylum is a non-profit institution with the goal of enabling elderly people to have a life with dignity and quality. The services provided by the institution include an environment filled with friendship and harmony, and with specialized personnel to look after the health and nutritional needs of its residents.\n\nThe Happy Grandpa is presently housing 150 permanent residents, amongst men and women. Amongst the residents, 45% has no family ties outside the asylum, being their affective relations daily cultivated with the staff and with voluntary workers.\n\nBeing a part of the Dear Friend project will enable our residents to engage with personal real life stories, filling their time with affection and bonding with other people – even if this is so done by distance. Besides these personal achievements, the Happy Grandpa will be able to gather funding for the improvement of its facilities. The specific goal is to reform their game room, by acquiring new games and furniture.", image: File.open("#{Rails.root}/spec/fixtures/images/asylum-cover.jpg") },
])