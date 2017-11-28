class CreateRatings < ActiveRecord::Migration[5.1]
  def change
    create_table :ratings do |t|
      t.integer :dificult
      t.text :to_do
      t.text :not_to_do
      t.boolean :take_again
      t.text :text

      t.integer :rateable_id
      t.string :rateable_type
      t.belongs_to :user

      t.timestamps
    end

    add_index :ratings, [:rateable_id, :rateable_type]
  end
end
