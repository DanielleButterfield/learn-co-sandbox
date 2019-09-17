class CreateReviewsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.string :content
      t.integer :rating
      t.references :restaurant, foreign_key: true
      t.references :customer, foreign_key: true # foreign_key lets it know that it is getting something from another class.
    end
  end
end
