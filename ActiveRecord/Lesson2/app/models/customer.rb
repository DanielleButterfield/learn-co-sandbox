class Customer < ActiveRecord::Base
    has_many :reviews
    has_many :restaurants, through: :reviews # Going through: the :join_table lets you get the instances you want.

    def restaurant_names
        restaurants.pluck(:name) # .pluck plucks the given attribute.
    end
end