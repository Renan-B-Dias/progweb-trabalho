class CreateSubjects < ActiveRecord::Migration[5.1]
  def change
    create_table :subjects do |t|
      t.string :name
      t.integer :dificult
      t.integer :period
      t.integer :workload
      t.text :description

      t.timestamps
    end
  end
end
