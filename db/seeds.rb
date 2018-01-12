# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Light.destroy_all

Light.create!(
  id: 1,
  name: "Lamp 1",
  row: 3,
  column: 1
)
Light.create!(
  id: 2,
  name: "Lamp 2",
  row: 1,
  column: 3
)
Light.create!(
  id: 3,
  name: "Lamp 3",
  row: 2,
  column: 2
)
Light.create!(
  id: 4,
  name: "Lamp 4",
  row: 1,
  column: 2
)
Light.create!(
  id: 5,
  name: "Lamp 5",
  row: 1,
  column: 1
)
Light.create!(
  id: 6,
  name: "Lamp 6",
  row: 2,
  column: 1
)
