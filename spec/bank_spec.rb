require "bank"

describe Bank do

  let(:subject) { described_class.new }

  context '#initialize' do
    it 'with a balance of 0' do
      expect(subject.balance).to eq 0
    end

    it 'with an empty history' do
      expect(subject.history).to be_empty
    end
  end

  context '#deposit' do
    it 'allows user to add to balance' do
      subject.deposit 100
      expect(subject.balance).to eq 100
    end
    it 'adds info to history' do
      expect(subject.deposit(100)).to eq "DATE: #{Date.today.to_s} || DEPOSIT: 100 || BALANCE: 100"
    end
  end

  context '#withdraw' do
  it 'allows user to make withdrawals' do
    subject.deposit 100
    subject.withdraw 50
    expect(subject.balance).to eq 50
  end
end

end
