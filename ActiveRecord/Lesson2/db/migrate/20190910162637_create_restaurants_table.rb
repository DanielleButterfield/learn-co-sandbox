class CreateRestaurantsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.string :name # This is where you put instance variables in a M:N relationship.
    end
  end
end
