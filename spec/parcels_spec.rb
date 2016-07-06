require('rspec')
require('parcels')

describe(Parcel) do
  describe('#volume') do
    it('returns the volume of a parcel') do
      test_parcel = Parcel.new(12, 7, 2, 3)
      expect(test_parcel.volume()).to(eq(168))
    end
  end
  describe('#cost_to_ship') do
    it('returns the cost to ship a parcel depending on distance, volume and weight') do
      test_parcel = Parcel.new(12, 7, 2, 4)
      expect(test_parcel.cost_to_ship(200)).to(eq(6))
    end
  end
end
