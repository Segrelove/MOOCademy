require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Problème d'ID car elles n'ont pas été overwrite sur mes plusieurs test !

10.times do |y|
  Course.create(id: y, name: Faker::ProgrammingLanguage.name, description: Faker::Company.bs)
  10.times do |x|
    Lesson.create(course_id: y, title: "Lesson n°#{x}", body: Faker::Company.bs)
  end
end



p '10 cours ont été créé ainsi que 10 lecons par cours'