class Dog
  attr_accessor :number_of_legs, :type_of_dog, :seating_weight, :maximum_velocity

   def initialize(number_of_legs, type_of_dog, seating_weight, maximum_velocity)

       @number_of_legs = number_of_legs
       @type_of_dog = type_of_dog
       @seating_weight = seating_weight       #in pounds
       @maximum_velocity = maximum_velocity   # in miles per hour
    end


end


dog = Dog.new(4, 'german shepherd', 60, 40)
dog.type_of_dog = 'rottweiler'
puts dog 
puts dog.maximum_velocity
puts dog.number_of_legs
puts dog.seating_weight
puts dog.type_of_dog