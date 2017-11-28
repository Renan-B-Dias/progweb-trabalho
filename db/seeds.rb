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

Teacher.create(name: "Jane Dirce Alves Sandim Eleutério", title: :doctor)
Teacher.create(name: "Bruno Magalhães Nogueira", title: :doctor)
Teacher.create(name: "Samuel Benjoino Ferraz", title: :master)
Teacher.create(name: "Rodrigo Funabashi Jorge", title: :doctor)
Teacher.create(name: "Anderson Viçoso de Araujo", title: :doctor)
