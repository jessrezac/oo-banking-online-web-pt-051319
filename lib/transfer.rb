class Transfer
  attr_reader :sender, :receiver, :amount, :status

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end

  def valid?
    #   can check that both accounts are valid
    #   calls on the sender and receiver's #valid? methods
  end

  def execute_transaction
    #   can execute a successful transaction between two accounts
    #   each transfer can only happen once
    #   rejects a transfer if the sender doesn't have a valid account
  end

  def reverse_transfer
    #   can reverse a transfer between two accounts
    #   it can only reverse executed transfers
  end
end
