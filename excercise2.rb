# Create a class called Cat

class Cat

# Every cat should have three attributes when they're created: name, preferred_food and meal_time
    def initialize(name, preferred_food, meal_time)
        @name = name
        @preferred_food = preferred_food
        @meal_time = meal_time
    end 

# Let's assume meal_time is an integer from 0 to 23
# Add an instance method called eats_at that returns the hour of the day with AM or PM that this cat eats.
#The return value should be something like "11 AM" or "3 PM"
    def eats_at
        if @meal_time.to_i > 0 && @meal_time.to_i < 12
            return "meal time is #{@meal_time}am"
        elsif @meal_time.to_i >= 12 && @meal_time.to_i < 24
            return "meal time is #{@meal_time}pm"
        end
    end

# Add another instance method called meow that returns a string of the cat telling you all about itself
# The return value should be something like "My name is Sparkles and I eat tuna at 11 AM"

    def meow
        return "My name is #{@name} and I love to eat #{@preferred_food} at #{@meal_time}#{eats_at}"
    end 

end 


# Create two instances of the Cat class in your file: They should each have unique names, preferred foods and meal times
Charlie = Cat.new("Charlie", "Cookies", "11")
Teddy = Cat.new("Teddie", "apples", "12")
p Charlie.eats_at
p Teddy.eats_at
p Charlie.meow
p Teddy.meow




