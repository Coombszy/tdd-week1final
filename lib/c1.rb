class AnimalGreeter
   def greet(animal, name) 
        "#{sound(animal)}! #{name}!"
   end
   def sound(animal)
       animal.downcase!
        case animal
        when "cow"
            "Moo"
        when "alien"
            "Errr"
        when  "chicken"
            "Squawk"
        when  "horse"
            "Neeey"
        end
   end
end