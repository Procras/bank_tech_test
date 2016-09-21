require "bank"

describe Bank do

  let(:subject) { described_class.new }

  context '#initialize' do
    it 'with a balance of 0' do
      expect(subject.balance).to eq 0
    end
  end

  context '#deposit' do
    it 'allows user to add to balance' do
      subject.deposit 100
      expect(subject.balance).to eq 100
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
