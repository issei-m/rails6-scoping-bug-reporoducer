# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.delete_all
Category.create!(id: 1, name: "Root 1", children: [ Category.new(id: 3, name: "Child 1-1"), Category.new(id: 4, name: "Child 2-2") ])
Category.create!(id: 2, name: "Root 1", children: [ Category.new(id: 5, name: "Child 1-1"), Category.new(id: 6, name: "Child 2-2") ])
