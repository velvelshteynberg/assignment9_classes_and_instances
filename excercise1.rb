# Create a BankAccount class
# Every bank account should have balance and interest_rate attributes
class Bank_Account

    def initialize(balance, interest_rate)
        @balance = balance
        @interest_rate = interest_rate
    end 

# Your class should have an instance method called deposit that accepts one amount argument and adds that amount to the total balance
    def deposit(amount_of_money)
        return @balance + amount_of_money
    end

# There should be a withdraw instance method that accepts one amount argument and subtracts it from the total balance
    def withdraw(amount_of_money)
        return @balance - amount_of_money
    end

# Finally, there should be a gain_interest instance method that increases the total balance according to the interest rate.
    def add_interst
        return @balance + (@balance*@interest_rate)
    end 

end 
# At this point you should test out creating an instance of your class to make sure it works
Velvel_money = Bank_Account.new(1000, 0.0321)
p Velvel_money
p Velvel_money.deposit(1000)
p Velvel_money.withdraw(500)
p Velvel_money.add_interst


