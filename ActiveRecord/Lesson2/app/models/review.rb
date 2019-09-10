class Review < ActiveRecord::Base
    belongs_to :customer
    belongs_to :restaurant
end

# has_many = plural
# belongs_to = singular

# For a many to many, belongs_to goes in the join table, and has_many goes in the other classes