# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'pp'
admin_role = Role.find_or_create_by(role: "Administrator")
customer_role = Role.find_or_create_by(role: "Customer")

user = User.create_with(password: 'password').find_or_create_by(email: 'user@mail.com', fname: 'John', lname: 'Doe', street: '123 Fake St.', city: 'Ottawa', postal: 'K1A1A1', phone: '1234567890', role: customer_role)
pp user

admin = User.create_with(password: 'password').find_or_create_by(email: 'admin@mail.com', fname: 'John', lname: 'Doe', street: '123 Fake St.', city: 'Ottawa', postal: 'K1A1A1', phone: '1234567890', role: admin_role)
pp admin
