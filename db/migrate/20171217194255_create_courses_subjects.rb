class CreateCoursesSubjects < ActiveRecord::Migration[5.1]
  def change

    create_table :courses_subjects, id: false do |t|
      t.belongs_to :course, index: true
      t.belongs_to :subject, index: true
    end

  end
end
