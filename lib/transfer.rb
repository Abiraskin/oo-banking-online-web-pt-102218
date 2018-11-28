class Transfer

    attr_reader :amount, :sender, :receiver
    attr_accessor :status

    def initialize(sender, receiver, amount)
      @status = "pending"
      @sender = sender
      @receiver = receiver
      @amount = amount
    end

    def valid?
      sender.valid? && receiver.valid?
    end

    def execute_transaction
      if valid? && sender.balance > amount && self.status == "pending"
        sender.balance -= amount
        receiver.balance += amount
        self.status = "complete"
      else
        transfer_rejected
      end
    end

    def transfer_rejected
      self.status = "rejected"
    "Transaction rejected. Please check your account balance."
  end

  def reverse_transaction
    if valid? && receiver.balance > amount && self.status == "complete"
      sender.balance += amount
      receiver.balance -= amount
      self.status = "reversed"
    else
      transfer_rejected
    end
  end
end
