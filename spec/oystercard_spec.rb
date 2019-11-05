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

  # it 'adds money to oystercard' do
  #   expect(subject.top_up(5)).to eq()
  # end

  # it 'displays the current balance' do
  #   oyster_card = Oystercard.new
  #
  # end



end
