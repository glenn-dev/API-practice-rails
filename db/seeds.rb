# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Unit.destroy_all
Request.destroy_all

Unit.create(
    value: 24774.64,
    date_uf: '2020-01-01'
)
Unit.create(
    value: 25775.65,
    date_uf: '2020-02-01'
)