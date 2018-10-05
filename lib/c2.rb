class BankAccount
  def initialize
    @balance = 0.0
  end
 def balance
    @balance
 end
 def withdraw(float)
   @balance -= float
 end
 def deposit(float)
   @balance += float
 end
end