class CreateCourses < ActiveRecord::Migration[5.1]
  def change
    create_table :courses do |t|
      t.string :name
      t.integer :area_of_study
      t.belongs_to :user

      t.timestamps
    end
  end
end
