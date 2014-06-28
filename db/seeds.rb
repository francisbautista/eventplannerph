# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!(first_name: 'Francis', last_name: 'Bautista',
            email: 'francis.bautista07@gmail.com', password: 'password')
User.create!(first_name: 'Yuri', last_name: 'Kristoff',
            email: 'yuri@gmail.com', password: 'password')
User.create!(first_name: 'Angelo', last_name: 'Francisco',
            email: 'afranciscowork@gmail.com', password: 'password')
User.create!(first_name: 'Tori', last_name: 'Tadiar',
            email: 'tadiar.victoria@gmail.com', password: 'password')
User.create!(first_name: 'Eyana', last_name: 'Mallari',
            email: 'eyanamallari@gmail.com', password: 'password')

Supplier.create!(first_name: 'Francis', last_name: 'Bautista',
            email: 'francis.bautista07@gmail.com', password: 'password')
Supplier.create!(first_name: 'Yuri', last_name: 'Kristoff',
            email: 'yuri@gmail.com', password: 'password')
Supplier.create!(first_name: 'Angelo', last_name: 'Francisco',
            email: 'afranciscowork@gmail.com', password: 'password')
Supplier.create!(first_name: 'Tori', last_name: 'Tadiar',
            email: 'tadiar.victoria@gmail.com', password: 'password')
Supplier.create!(first_name: 'Eyana', last_name: 'Mallari',
            email: 'eyanamallari@gmail.com', password: 'password')
