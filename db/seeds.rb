# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Course.delete_all
User.delete_all

engSoft = Course.create(name: "Engenharia de Software")
course = Course.create(name: "Ciências da Computação")
sisInf = Course.create(name: "Sistemas da Informação")
course = Course.create(name: "Biologia")
course = Course.create(name: "Medicina")

user = User.create(name: "Renan Benatti Dias", email: "renanbenattidias@gmail.com", password: "secret123", course: engSoft)
user = User.create(name: "Victor Pereira de Paula", email: "victordepaula@gmail.com", password: "secret123", course: engSoft)
user = User.create(name: "Mathias", email: "mathias@gmail.com", password: "secret123", course: sisInf)

teacher = Teacher.create(name: "Jane Dirce Alves Sandim Eleutério", title: "Doutora")
teacher = Teacher.create(name: "Bruno Magalhães Nogueira", title: "Doutor")
teacher = Teacher.create(name: "Samuel Benjoino Ferraz", title: "Mestre")
teacher = Teacher.create(name: "Rodrigo Funabashi Jorge", title: "Doutor")
teacher = Teacher.create(name: "Anderson Viçoso de Araujo", title: "Doutor")
