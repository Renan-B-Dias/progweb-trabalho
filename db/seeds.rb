require 'csv'

subjects = CSV.parse File.open("#{Rails.root}/lib/assets/subjects.csv"), headers: true
teachers = CSV.parse File.open("#{Rails.root}/lib/assets/teachers.csv"), headers: true

subjects.each do |row|
  subject = Subject.find_or_initialize_by name: row['subject'].squish
  subject.workload    = row['workload'].to_i
  subject.description = Faker::Lorem.paragraph(3)
  subject.save

  courses = row['course'].split(',')
  courses.each do |course|
    # Ta escrito errado no CSV
    course_name = course.squish.sub('(OPT)', '').sub('Engenheria', 'Engenharia')
    course = Course.find_or_create_by name: course_name
    course.subjects << subject
  end
end

teachers.each do |row|
  Teacher.create row.to_hash
end

user = User.create(
  name: 'Teste',
  email: 'teste@teste.com',
  password: 'secret123',
  course: Course.all.sample
)

Subject.all.each do |subject|

  rand(6..12).times do
    subject.ratings.create(
      user: user,
      difficulty: rand(1..5),
      grade: rand(1..5),
      to_do: Faker::Lorem.paragraph,
      not_to_do: Faker::Lorem.paragraph,
      text: Faker::Lorem.paragraph,
      take_again: [false, true].sample
    )
  end

end

Teacher.all.each do |teacher|

  rand(6..12).times do
    teacher.ratings.create(
      user: user,
      difficulty: rand(1..5),
      grade: rand(1..5),
      to_do: Faker::Lorem.paragraph,
      not_to_do: Faker::Lorem.paragraph,
      text: Faker::Lorem.paragraph,
      take_again: [false, true].sample
    )
  end

end