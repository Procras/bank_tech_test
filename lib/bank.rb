class Bank
  attr_reader :balance, :history

  def initialize
    @balance = 0
    @history = []
  end

  def deposit amount
    @balance += amount
    add_deposit_info amount
  end

  def withdraw amount
   @balance -= amount
   add_withdrawl_info amount
  end

  def print_history
    @history.reverse.map { |i| p i }
  end

  private

  def add_deposit_info amount
    @history << "DATE: #{Date.today.to_s} || DEPOSIT: #{amount} || BALANCE: #{@balance}"
    @history.join()
  end

  def add_withdrawl_info amount
    @history << "DATE: #{Date.today.to_s} || WITHDREW: #{amount} || BALANCE: #{@balance}"
    @history.join()
  end
end
