require_relative('../models/student')
require_relative('../models/house')
require('pry-byebug')

house1 = House.new(
"house_name" => "Gryffindor"
  )

house2 = House.new(
"house_name" => "Hufflepuff"
  )

house3 = House.new(
"house_name" => "Ravenclaw"
  )

house4 = House.new(
"house_name" => "Slytherin"
  )

house1.save()
house2.save()
house3.save()
house4.save()



student1 = Student.new(
  "first_name" => "Newt",
  "surname" => "Scamander",
  "house_id" => house2.id,
  "age" => 119
  )

student2 = Student.new(
  "first_name" => "Rubeus",
  "surname" => "Hagrid",
  "house_id" => house1.id,
  "age" => 89
  )

student1.save()
student2.save()

binding.pry
nil


