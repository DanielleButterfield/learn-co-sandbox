class CreateStudentsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :name
      t.references :teacher, foreign_key: true
    end
  end
end
