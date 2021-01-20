
# This needs to be read-only!
# Every day, each paperboy is given a house number to start at and a house number to finish at. 
#They get paid $0.25 for every paper they deliver and $0.50 for every paper over their quota. 
#If at the end of the day they haven't met their quota, they lose $2.

class Paperboy

quota = 50
total_houses_delivered_to = 0

# Name
# Experience (the number of papers they've delivered)
# Earnings (amount of money they've earned)
    def initialize(name, experience, earnings)
        @name = name
        @experience = experience 
        @earnings = earnings
    end 


        # quota
# This method should calculate and return the paperboy's quota for his next delivery
# The minimum number of papers to deliver is 50. 
#The quota is calculated as half of your experience added to the minimum. 
#So the first time a paperboy makes a delivery, the quota is 50. 
#The next time, the quote is 50 plus half the number of papers that the paperboy has delivered in the past. 
#In this way the quota should increase after every delivery the paperboy makes.
    def quota
        quota = 50 + (@experience/2)
        return quota
    end 



# deliver(start_address, end_address)
# This method will take two house numbers and return the amount of money earned on this delivery as a floating point number. 
#It should also update the paperboy's experience!
# Let's assume that the start_address is always a smaller number than the end_address
# As a stretch exercise you can figure out how to ensure it still works if the above assumption isn't met!
    def deliver(start_address, end_address)
        total_houses = end_address - start_address
        new_earnings = (total_houses.abs.to_f/4.0)
        return "$#{new_earnings}"
        @experience += total_houses.abs.
    end 



# This method should return a string about the paperboy's performance
# e.g. "I'm Tommy, I've delivered 90 papers and I've earned $38.25 so far!"
    def performance
        "I'm #{@name}, I've delivered #{@experience} papers and I've earned #{@earnings} so far!"
    end 

end 

# Each paperboy should have at least these methods:




# report

# Here's some sample code, using your Paperboy class:

# tommy = Paperboy.new("Tommy")

# tommy.quota # => 50
# tommy.deliver(101, 160) # => 17.5
# tommy.earnings #=> 17.5
# tommy.report # => "I'm Tommy, I've delivered 60 papers and I've earned $17.5 so far!"

# tommy.quota # => 80
# tommy.deliver(1, 75) # => 16.75
# tommy.earnings #=> 34.25
# tommy.report # => "I'm Tommy, I've been delivered 135 papers and I've earned $34.25 so far!"


tommy = Paperboy.new("tommy", 0, 0)
p tommy

p tommy.quota
p "============================="
p tommy.deliver(50, 100)
p "============================="
p tommy.quota
p "============================="
p tommy.performance