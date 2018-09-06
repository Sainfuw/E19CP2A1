# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Task.create(
  name: "Comer Asado",
  detail: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Praesentium doloremque quibusdam architecto.",
  photo: "asado.jpg"
)
Task.create(
  name: "Bailar Cueca",
  detail: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Praesentium doloremque quibusdam architecto.",
  photo: "cueca.jpg"
)
Task.create(
  name: "Ir a un Desfile",
  detail: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Praesentium doloremque quibusdam architecto.",
  photo: "desfile.jpg"
)
Task.create(
  name: "Comer Empanada",
  detail: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Praesentium doloremque quibusdam architecto.",
  photo: "empanada.jpg"
)
Task.create(
  name: "Ir a una Fonda",
  detail: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Praesentium doloremque quibusdam architecto.",
  photo: "fonda.jpg"
)
Task.create(
  name: "Compartir en Familia",
  detail: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Praesentium doloremque quibusdam architecto.",
  photo: "familia.jpg"
)
Task.create(
  name: "Tomar un Terremoto",
  detail: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Praesentium doloremque quibusdam architecto.",
  photo: "terremoto.jpg"
)
Task.create(
  name: "Hacer un Viaje",
  detail: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Praesentium doloremque quibusdam architecto.",
  photo: "viaje.jpg"
)
Task.create(
  name: "Elevar Volantin",
  detail: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Praesentium doloremque quibusdam architecto .",
  photo: "volantin.jpg"
)

10.times do |i|
  User.create(
    username: "User#{i+1}",
    photo: "https://randomuser.me/api/portraits/men/#{i+1}.jpg",
    email: "user#{i+1}@gmail.com",
    password: "123456"
  )
end