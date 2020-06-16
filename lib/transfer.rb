class Transfer
  attr_reader :sender, :receiver, :amount
  attr_accessor :status

  # your code here
  def initialize(sender, receiver, amount)
    @status = "pending"
    @amount = amount
    @sender = sender
    @receiver = receiver
  end

  def valid?
    @sender.valid? && @receiver.valid?
  end

  def execute_transaction
    if @sender.valid? && @sender.balance >= @amount && @status == "pending"
      @sender.balance -= @amount
      @receiver.balance += @amount
      @status = "complete"
    else
      @status = "rejected"
      "Transaction rejected. Please check your account balance."
    end
  end

  def reverse_transfer
    if @status == "complete"
      @sender.balance += @amount
      @receiver.balance -= @amount
      @status = "reversed"
    end
  end
end
