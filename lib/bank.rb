class Bank
  attr_reader :balance, :history

  def initialize
    @balance = 0
    @history = []
  end

  def deposit amount
    @balance += amount
    @history << "DATE: #{Date.today.to_s} || DEPOSIT: #{amount} || BALANCE: #{@balance}"
    @history.join()
  end

  def withdraw amount
   @balance -= amount
   @history << "DATE: #{Date.today.to_s} || WITHDREW: #{amount} || BALANCE: #{@balance}"
   @history.join()
 end
end
