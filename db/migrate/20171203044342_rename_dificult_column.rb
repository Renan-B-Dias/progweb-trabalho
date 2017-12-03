class RenameDificultColumn < ActiveRecord::Migration[5.1]
  def up
    rename_column :ratings, :dificult, :difficulty
    rename_column :subjects, :dificult, :difficulty
  end

  def down
    rename_column :ratings, :difficulty, :dificult
    rename_column :subjects, :difficulty, :dificult
  end
end
