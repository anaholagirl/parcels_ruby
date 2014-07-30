require 'rspec'
require 'parcels'

describe 'Parcel' do
  it 'initializes with length, width, height, and weight' do
    new_height = 4
    new_length = 12
    new_width = 4
    new_weight = 10
    test_parcel = Parcel.new(new_length, new_width, new_height, new_weight)
    test_parcel.should be_an_instance_of Parcel
  end

  it 'will calculate the volume' do
    test_parcel = Parcel.new(12, 4, 4, 10)
    expect(test_parcel.volume).to eq 192
  end

  it 'will calculate the total cost of shipping' do
    test_parcel = Parcel.new(12, 4, 4, 10)
    expect(test_parcel.cost_to_ship).to eq 30.30
  end
end
