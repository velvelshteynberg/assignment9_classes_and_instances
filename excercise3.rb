# lives should start at 5.
# gold_coins should start at 0.
# health_points should start at 10.
gold_coins = 0
health_points = 10
lives = 5
# Create a class called Player.
class Player

# Every player should have four attributes: gold_coins, health_points, and lives.
    def initialize(gold_coins, health_points, lives)
        @gold_coins = gold_coins
        @health_points = health_points
        @lives = lives
    end 

    def restart
        gold_coins = 0
        health_points = 10
        live = 5
    end 

    # Your class should have an instance method called level_up that increases lives by one.
    def level_up
        lives = @lives + 1
        return lives
        if lives == 0
            return restart
        end 
    end

# Your class should have an instance method called collect_treasure that increases gold_coins by one. 
#If gold_coins is a multiple of ten (eg, 10, 20, 30, and so on) then the collect_treasure method should run the level_up method.
    def collect_treasure
        gold_coins = @gold_coins +1
        return gold_coins
        if gold_coins % 10 == 0 
            return level_up
        end
    end 

# Your class should have an instance method called do_battle that accepts one damage argument and subtracts it from the player's health_points. 
#If health_points falls below one, subtract one from lives and reset health_points to ten. 
#If you have run out of lives, this method should run another method called restart (see below)
# The restart instance method should set all attributes back to their starting values (5, 0, and 10).
    def do_battle
        return  health_points = @health_points - 1
        if health_points < 1
           return lives = @lives - 1
            return health_points += 10
        end 
    end 

    

end


player1 = Player.new(gold_coins, health_points, lives)

p "========================="

p player1.level_up


p "========================="

p player1.collect_treasure


p "========================="

p player1.do_battle





#I cant seem to use an instance method and with that to creaate the new value for my object. It doesn't remain permanent. it just seems like I am changing the value but not updating the value: the new value doewsnt remain. Why is that?
