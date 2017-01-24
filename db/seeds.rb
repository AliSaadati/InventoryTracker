# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Product.delete_all
Product.create! id: 1, name: "Vanilla", price: 19.99, active: true, size: 5
Product.create! id: 2, name: "Chocolate", price: 19.99, active: true, size: 5
Product.create! id: 3, name: "Strawberry", price: 19.99, active: true, size: 5
Product.create! id: 4, name: "RockRoad", price: 19.99, active: true, size: 5
Product.create! id: 5, name: "BirthdayCake", price: 19.99, active: true, size: 5 
Product.create! id: 6, name: "Neopolitan", price: 19.99, active: true, size: 5
Product.create! id: 7, name: "CookiesNoCream", price: 19.99, active: true, size: 5 
Product.create! id: 8, name: "Cherry", price: 19.99, active: true, size: 5
Product.create! id: 9, name: "QuadrupleFudge", price: 19.99, active: true, size: 5 

OrderStatus.delete_all
OrderStatus.create! id: 1, name: "Placed"
OrderStatus.create! id: 2, name: "Processing"
OrderStatus.create! id: 3, name: "Shipped"
OrderStatus.create! id: 4, name: "Cancelled"