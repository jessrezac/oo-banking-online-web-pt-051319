require 'pry'
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
    if self.sender.balance > @amount && status == "pending"
        self.sender.deposit(-@amount)
        self.receiver.deposit(@amount)
        self.status = "complete"
    else
      "Transaction rejected. Please check your account balance."
      self.status = "rejected"
    end
  end

  def reverse_transfer
    #   can reverse a transfer between two accounts
    #   it can only reverse executed transfers
  end
end
