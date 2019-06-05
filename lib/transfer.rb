class Transfer
  attr_accessor :status
  attr_reader :sender, :receiver, :amount

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end

  def valid?
    self.sender.valid? && self.receiver.valid?
  end

  def execute_transaction
    self.receiver.deposit(@amount)
    self.sender.deposit(-@amount)
    self.status = "complete"
    #   can execute a successful transaction between two accounts
    #   each transfer can only happen once
    #   rejects a transfer if the sender doesn't have a valid account
  end

  def reverse_transfer
    #   can reverse a transfer between two accounts
    #   it can only reverse executed transfers
  end
end
