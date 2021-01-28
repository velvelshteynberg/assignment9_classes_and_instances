# You are a farmer that wishes to keep track of the fields on your farm. 
#you want to be able to add fields of various types - for example, corn and wheat - and to keep track of the harvest. 
#You will be keeping track of the total amount of food your farm has ever produced.
class Fields

    @@all_fields = []
    total_food_produced = 0

    # You can add fields of choice to your farm by specifying their type (eg. "corn") and their total area in hectares (eg. 100).
    def initialize(field_type, field_size, id)
        @field_type = field_type
        @field_size = field_size
        @id = id
        @@all_fields << self 
    end 
    attr_accessor :field_type, :field_size, :id
    
    def display_all_fields
        @@all_fields
    end 

# corn: 20
# wheat: 30
# When you harvest, you must collect food from every one of your fields and record how much total food you have collected. 
#It should display all of this information.
    def total_food_produced
        total_food_from_corn_field = 0
        total_food_from_wheat_field = 0
        total_food_produced = total_food_from_corn_field + total_food_from_wheat_field
        #i wonder why the program did not read the earlier variable that I had set
        #loop through all the fields to understand the crops from all the fields
        #It should also tell you how much total food you have produced up until this point.
        @@all_fields.each do |individual_field|
            #if corn field multiply acres by 20
        if individual_field.field_type == "corn"
            #add that new number to total_food_produced variable
            total_food_from_corn_field += (20 * individual_field.field_size) 
            total_food_produced += (20 * individual_field.field_size) 
           #print how much food you got from the corn field
           p "you have collected #{total_food_from_corn_field} from your #{individual_field.field_type} field"
           #if wheat field multiply acres by 30
        elsif individual_field.field_type == "wheat"
             #add that new number to total_food_produced variable
             total_food_from_wheat_field += individual_field.field_size * 30
             total_food_produced += (30 * individual_field.field_size) 
            #print how much food you got from the wheat field
           p "you have collected #{total_food_from_wheat_field} from your #{individual_field.field_type} field"
        end 
        total_food_from_corn_field = 0
        total_food_from_wheat_field = 0
        end 
    total_food_produced
    end 


# Sometimes a farmer wants to relax. 
#In doing so, you will get a chance to enjoy the beauty of each one of your fields (without harvesting them).
    def display_all_fields
        @@all_fields
    end 

    def self.display_fields
        @@all_fields
    end

    # You can also check the status of each field, which is a more direct way of observing the status of your fields (their size and type).
    def self.find_specific_field
        puts "WHat is the id value of the filed that you are looking for?"
        id_value = gets.chomp.to_i
        @@all_fields.each do |individual_field|
            if individual_field.id == id_value
                return individual_field
            end 
        end 
    end 

# The program should provide a list of input options whenever it asks you to enter one.
end 
field1 = Fields.new("corn", 100, 1)
field2 = Fields.new("corn", 100, 2)

p field1.display_all_fields

p field1.total_food_produced

p Fields.find_specific_field


