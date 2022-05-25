# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
    Student.create([
        { name: "Charlie", grade: 10 }, 
        { name: "Adam", grade: 11 },
        { name: "Henry", grade: 9 },
        { name: "Ian", grade: 12 }
    ])

    App.create([
        { name: "Clash of Clans", price: 5 },
        { name: "Flappy Bird", price: 420 },
        { name: "Candy Crush", price: 5 },
        { name: "Trivia Crack", price: 0 }
    ])

    Phone.create([
        {maker: "Samsung", student_id:1, app_id: 1}, 
        {maker: "Apple", student_id: 2, app_id: 2}, 
        {maker: "Samsung", student_id: 2, app_id: 3},
        {maker: "Apple", student_id: 3, app_id: 4},
        {maker: "Samsung", student_id: 4, app_id: 4}
    ])
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
