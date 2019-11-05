require 'oystercard'

describe Oystercard do

  it 'creates an instance of Oystercard'do
    oyster_card = Oystercard.new
    expect(oyster_card).to be_an_instance_of(Oystercard)
    #expect(oyster_card.balance).to eq(0)
  end

  it 'responds to balance' do
    oyster_card = Oystercard.new
    expect(subject).to respond_to(:balance)
  end

  # it 'displays the current balance' do
  #   oyster_card = Oystercard.new
  #
  # end



end
