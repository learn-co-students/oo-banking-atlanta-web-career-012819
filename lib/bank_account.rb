class BankAccount
  
  attr_reader :name
 attr_accessor :balance, :status
  def initialize (name, balance = 1000, status = "open")
    @balance = balance
    @name = name
    @status = status
  end

  def deposit(amt)
    @balance = @balance + amt
  end

  def display_balance
    "Your balance is $#{@balance}."
  end

  def valid?
    if  @status == "open" && @balance > 0
      true
    else
      false
    end
  end

  def close_account
    @status = "closed"
  end

end
