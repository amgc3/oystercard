require 'oystercard'

describe Oystercard do
let(:oyster_card) {Oystercard.new}
  it 'creates an instance of Oystercard'do
    #oyster_card = Oystercard.new
    expect(oyster_card).to be_an_instance_of(Oystercard)
  end

  it 'responds to balance' do
    #oyster_card = Oystercard.new
    expect(subject).to respond_to(:balance)
  end

  it 'has initial balance of 0' do
    #oyster_card = Oystercard.new
    expect(subject.balance).to eq(0)
  end

  it 'responds to top_up' do
    #oyster_card = Oystercard.new
    expect(subject).to respond_to(:top_up).with(1).argument
  end
  # it { is_expected.to respond_to(:top_up).with(1).argument }

  it 'adds money to oystercard balance' do
    expect{subject.top_up(1)}.to change{ subject.balance }.by(1)
  end

  it 'raises an error if the maximum balance is exceeded' do
    maximum_balance = Oystercard::MAX_BALANCE
    subject.top_up(maximum_balance)
    expect{ subject.top_up 1 }.to raise_error "Maximum balance of £ #{maximum_balance} exceeded"
  end

  it 'responds to deduct' do
    expect(subject).to respond_to(:deduct).with(1).argument
  end

  it 'deducts money from oystercard balance' do
    expect { subject.deduct 1 }.to change{subject.balance }.by(-1)
  end

  it 'detects if in_journey' do
    subject.touch_in
    expect(subject.in_journey?).to be true
  end

  it 'detects if not in_journey' do
    subject.touch_out
    expect(subject.in_journey?).to be false
  end


end
