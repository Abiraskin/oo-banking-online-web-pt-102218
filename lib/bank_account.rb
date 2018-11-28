class BankAccount
  attr_reader :name
  attr_accessor :balance, :status

  def initialize(name)
    @name = name
    @balance = 1000
    @status = "open"
  end

  def deposit(deposit_ammount)
    self.balance += deposit_ammount
  end

  def display_balance(balance)
    "Your balance is #{balance}."
    
end
