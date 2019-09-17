Review.destroy_all
Customer.destroy_all
Restaurant.destroy_all

customer_1 = Customer.create(name: "Bob")
customer_2 = Customer.create(name: "Sally")

chilis = Restaurant.create(name: "Chilis")
red_robin = Restaurant.create(name: "Red Robin")

review_1 = Review.create({
    content: "This place is great.",
    rating: 5,
    customer: customer_1,
    restaurant: chilis
})

review_1 = Review.create({
    content: "This place is great.",
    rating: 5,
    customer: customer_2,
    restaurant: red_robin
})