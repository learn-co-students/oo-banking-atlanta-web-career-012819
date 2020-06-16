class Transfer

  attr_accessor :sender, :receiver, :status, :amount
  def initialize (sender, receiver, amount, status = "pending")
    @sender = sender
    @receiver = receiver
    @status = status
    @amount = amount
  end

  def valid?
    if  @receiver.valid? && @sender.valid? == true
      true
    else
      false
    end
  end

  def execute_transaction
    if @sender.valid? && @status == "pending" && @amount < @sender.balance
      @receiver.balance += @amount
      @sender.balance -= @amount
      @status = "complete"
    else
      @status = "rejected"
      "Transaction rejected. Please check your account balance."
    end
  end

  def reverse_transfer
    if @status == "complete"
    @receiver.balance -= @amount
    @sender.balance += @amount
    @status = "reversed"
  end
end

end 
