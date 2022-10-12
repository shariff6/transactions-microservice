# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
transaction = Transaction.create(
    [
        {
            user_id: 2345678,
            input_amount: 100000,
            input_currency: "USD",
            output_amount: 12090000,
            output_currency: "KES"
        },
        {
            user_id: 2345678,
            input_amount: 100000,
            input_currency: "USD",
            output_amount: 124515,
            output_currency: "NGN"
        }
    ]
)