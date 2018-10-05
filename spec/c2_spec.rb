require 'c2'

describe BankAccount do
  it 'responds to balance' do
    expect(subject).to respond_to(:balance)
  end
  it 'responds to withdraw' do
    expect(subject).to respond_to(:withdraw)
  end
  it 'responds to deposit' do
      expect(subject).to respond_to(:deposit)
  end
  it 'returns the balance of a new account' do
    expect(subject.balance).to eq 0.00
  end
  it 'returns the correct balance of an account with money in it' do
    subject.deposit(1.31)
    expect(subject.balance).to eq 1.31
  end
  it 'returns the correcnt balance after deposit a withdraw' do
    subject.deposit(1.67)
    subject.withdraw(0.17)
    expect(subject.balance).to eq 1.50
  end
end