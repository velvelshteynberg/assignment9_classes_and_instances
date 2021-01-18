# You are a farmer that wishes to keep track of the fields on your farm. 
#you want to be able to add fields of various types - for example, corn and wheat - and to keep track of the harvest. 
#You will be keeping track of the total amount of food your farm has ever produced.
class Fields

    @@all_fields = []
    total_food_produced = 0

    # You can add fields of choice to your farm by specifying their type (eg. "corn") and their total area in hectares (eg. 100).
    def initialize
        p "What type of field would you like to add? corn or wheat"
        field_type = gets.chomp
        p "How many hectares does this field have? "
        field_size = gets.chomp
        @field_type = field_type
        @field_size = field_size
        @@all_fields << self 
    end 

    def display_all_fields
        @@all_fields
    end 


# corn: 20
# wheat: 30
# When you harvest, you must collect food from every one of your fields and record how much total food you have collected. 
#It should display all of this information.
    def total_food_produced
        @@all_fields.each do |individual_field|
        if individual_field[:@field_type] == "corn"
           total_food_produced += ((individual_field[:@field_size].to_i) * 20) 
        elsif individual_field[:@field_type] == "wheat"
            total_food_produced += (individual_field[:@field_size] * 30) 
        end 
        return total_food_produced
    end 
    end 


# Sometimes a farmer wants to relax. 
#In doing so, you will get a chance to enjoy the beauty of each one of your fields (without harvesting them).

# You can also check the status of each field, which is a more direct way of observing the status of your fields (their size and type).
#It should also tell you how much total food you have produced up until this point.

# The program should provide a list of input options whenever it asks you to enter one.
end 
field1 = Fields.new
field2 = Fields.new

p field1.total_food_produced


