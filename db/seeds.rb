# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

roles = [
  {
    name: "Lead Developer",
    permissions: {
      manager: true,
      admin: false,
    }
  },
  {
    name: "Admin admin",
    permissions: {
      admin: true,
      manager: false,
    }
  },
  {
    name: "Floor Manager",
    permissions: {
      admin: false,
      manager: true,
    }
  },
  {
    name: "Chef Cuisine",
    permissions: {
      admin: false,
      manager: true,
    }
  },
  {
    name: "Sommelier Manager",
    permissions: {
      admin: false,
      manager: true,
    }
  },
  {
    name: "Receptionnist Manager",
    permissions: {
      admin: false,
      manager: true,
    }
  },
  {
    name: "Security Manager",
    permissions: {
      admin: false,
      manager: true,
    }
  }
]

puts 'Cleaning database...'
User.destroy_all
Employee.destroy_all
puts 'Creating first 7 users...'
users_attributes = [
  {
    email: "cami.admin@admin.com",
    forename: "Cami",
    surname: "Admin",
    password: "passw0rd",
    password_confirmation: "passw0rd",
    role: "Admin",
    manager: false,
    admin: true
  },
  {
    email: "david.manager@manager.com",
    forename: "David",
    surname: "Smith",
    password: "123456",
    password_confirmation: "123456",
    role: "Lead Manager",
    manager: true,
    admin: false
  },
  {
    email: "jack.manager@manager.com",
    forename: "Jack",
    surname: "Dean",
    password: "123456",
    password_confirmation: "123456",
    role: "Chef Cuisine",
    manager: true,
    admin: false
  },
  {
    email: "lucy.manager@gmail.com",
    forename: "Lucy",
    surname: "Granger",
    password: "123456",
    password_confirmation: "123456",
    role: "Receptionnist Manager",
    manager: true,
    admin: false
  },
  {
    email: "bastien.manager@gmail.com",
    forename: "Bastien",
    surname: "Renet",
    password: "123456",
    password_confirmation: "123456",
    role: "Bar Manager",
    manager: true,
    admin: false
  },
  {
    email: "sophie.manager@gmail.com",
    forename: "Sophie",
    surname: "Jude",
    password: "123456",
    password_confirmation: "123456",
    role: "Floor Manager",
    manager: true,
    admin: false
  },
  {
    email: "piotr.manager@gmail.com",
    forename: "Piotr",
    surname: "Puznic",
    password: "123456",
    password_confirmation: "123456",
    role: "Security Manager",
    manager: true,
    admin: false
  }
]

User.create!(users_attributes)
puts "First 7 Users created"
