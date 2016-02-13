# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create!(email: "example@example.com", password: "password", password_confirmation: "password")

project_names = [
  "Hazel Ridge",
  "Creekside",
  "The Oaks",
  "Elk Ridge Estates",
  "Jenelle's Place",
  "University Estates",
  "Vista Glen",
  "Dogwood Park Estates"
]

project_addresses = [
  "7500 NW 2nd Ave, Vancouver WA",
  "8205 NE 13th Ave, Vancouver WA",
  "2503 NE 87th Ave, Vancouver WA",
  "35650 Spotted Hill Dr, St. Helens OR",
  "10909 NE 44th St, Vancouver WA",
  "17003 NE Union Rd, Vancouver WA",
  "3205 NE 171st St, Ridgefield WA",
  "12208 NE 102nd St, Vancouver WA"
]

project_names.each_with_index do |name, index|
  Project.create!(name: name, address: project_addresses[index])
end
