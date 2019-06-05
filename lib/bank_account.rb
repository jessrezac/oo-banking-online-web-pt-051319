class BankAccount
  attr_accessor :balance, :status
  attr_reader :name

  def initialize(name)
    @name = name
    @balance = 1000
    @status = "open"
  end

  def deposit(amount)
    self.balance += amount
  end

  def display_balance
    # can display its balance
  end

  def valid?
    # is valid with an open status and a balance greater than 0
  end

  def close_account
    # can close its account
  end
end
