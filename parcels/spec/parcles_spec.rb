require "rspec"
require "parcels"

describe "Parcel" do
  it "it is initialized with dimensions and weight" do
    t_parcel = Parcel.new(2, 2, 2, 5)
    t_parcel.volume.should eq 8
  end
end

describe "Parcel" do
  it "the cost_to_ship method takes the volume times the square root of the weight and multiplies them tims .59 to calcualte the shipping cost" do
    t_parcel = Parcel.new(80, 90, 70, 64)
    t_parcel.cost_to_ship.should eq 2378880
  end
end
