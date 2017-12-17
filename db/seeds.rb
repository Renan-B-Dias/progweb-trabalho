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

# Subject.each do |subject|

#   subject.ratings.create(
#     difficulty: rand(1..5),

#   )

# end