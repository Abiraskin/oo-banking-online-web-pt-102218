class BankAccount

  attr_accessor :name, :account

  def intialize(name, account)
    @name = name
    @bank_account = account
    
    account.balance = "1000"
    account.status = "open"
  end
end
