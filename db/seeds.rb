# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

user = User.create(
    [
        name: "Shariff",
        email: "shariff@email.com",
        password: "123456789",
        password_confirmation: "123456789"
    ]
)
transaction = Transaction.create(
    [
        {
            user_id: 1,
            input_amount: 100000,
            input_currency: "USD",
            output_currency: "KES",
            output_amount: Money.from_cents(100000, "USD").exchange_to("KES")*100,

        },
        {
            user_id: 1,
            input_amount: 100000,
            input_currency: "USD",
            output_currency: "NGN",
            output_amount: Money.from_cents(100000, "USD").exchange_to("NGN")*100,
        }
    ]
)