class CreateLessons < ActiveRecord::Migration[6.0]
  def change
    create_table :lessons do |t|
      t.references :student, null: false, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
