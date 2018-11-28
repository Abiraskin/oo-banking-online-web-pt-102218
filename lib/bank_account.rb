class BankAccount
  attr_reader :name
  attr_accessor :balance, :status

  def intialize(name)
    @name = name
    @balance = 1000
    @status = "open"
  end
end
  
