class Transfer

    attr_reader :name
    attr_accessor :sender, :receiver, :status, :ammount

    def initialize(name)
      @name = name
      @sender = sender
      @receiver = receiver
      @ammount = ammount
    end

end
