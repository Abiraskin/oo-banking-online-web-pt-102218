class BankAccount

  attr_accessor :name :account

  def intialize(name, account)
    @name = name
    @account = []
    account.balance = "1000"
    account.status = "open"
  end  
end
