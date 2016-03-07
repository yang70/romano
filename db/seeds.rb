# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create!(email: "member@example.com", password: "password", password_confirmation: "password", first_name: "Lebron", last_name: "James", phone_number: "12334566789")

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

project_funding_percentage = [
  75,
  50,
  15,
  100,
  90,
  35,
  65,
  10
]

project_names.each_with_index do |name, index|
  Project.create!(name: name, address: project_addresses[index], fund_percentage: project_funding_percentage[index])
end

fund_name = [
  'Columbia Advantage, LLC',
  '46 Oaks Holding, LLC',
  'Capital Preservation 100, LLC',
  'Columbia Assets, LLC',
  'Creekwood, LLC',
  'RCR Investments, LLC',
  'Romano Properties, LLC',
  'SFA Elkridge, LLC',
  'SFA Oaks, LLC',
  'University Estates, LLC'
]

fund_name.each do |fund_name|
  Fund.create!(name: fund_name)
end

columbia_hazel_assets = [
  '101 NW 76th St',
  '102 NW 76th St',
  '103 NE 76th St',
  '104 NE 76th St',
  '105 NW 76th St',
  '106 NW 76th St',
  '107 NE 76th St',
  '108 NE 76th St',
  '109 NW 76th St',
  '110 NW 76th St',
  '111 NE 76th St',
  '112 NE 76th St',
  '116 NE 76th St',
  '118 NW 76th St',
  '120 NE 76th St',
  '122 NW 76th St',
  '124 NE 76th St',
  '128 NE 76th St',
  '130 NW 76th St',
  '133 NW 76th St',
  '134 NW 76th St',
  '135 NW 76th St',
  '137 NW 76th St',
  '138 NW 76th St',
  '141 NW 76th St',
  '145 NW 76th St',
  '146 NW 76th St',
  '149 NW 76th St',
  '150 NW 76th St',
  '154 NW 76th St',
  '158 NW 76th St',
  '201 NE 75th St',
  '205 NE 75th St',
  '6409 NW 1st Pl',
  '7400 NW 1st Pl',
  '7401 NW 1st Pl',
  '7403 NW 1st Pl',
  '7404 NW 1st Pl',
  '7405 NW 1st Pl',
  '7406 NW 1st Pl',
  '7407 NW 1st Pl',
  '7408 NW 1st Pl',
  '7410 NW 1st Pl',
  '7411 NW 1st Pl',
  '7412 NW 1st Pl',
  '7413 NW 1st Pl',
  '7414 NW 1st Pl',
  '7415 NW 1st Pl',
  '7416 NW 1st Pl',
  '7417 NW 1st Pl',
  '7418 NW 1st Pl',
  '7419 NW 1st Pl',
  '7420 NW 1st Pl',
  '7421 NW 1st Pl'
]

columbia = Fund.first
hazel = Project.find_by(name: "Hazel Ridge")

columbia_hazel_assets.each do |address|
  Asset.create!(street_address: address, city: "Vancouver", state: "WA", zip: "98665", fund: columbia, project: hazel)
end

user = User.first
user.funds << columbia
user.save
