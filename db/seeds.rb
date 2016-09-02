# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
50.times do
  company_name = Faker::Company.name
  buzzword = Faker::Company.buzzword
  slogan = Faker::Company.bs
  department = Faker::Commerce.department

  Company.create(
    name: company_name,
    department: department,
    slogan: slogan,
    buzzword: buzzword
  )
end
