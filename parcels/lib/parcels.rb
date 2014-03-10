class Parcel
  def initialize(l,w,h,weight)
    @length = l
    @height = h
    @width = w
    @weight = weight
  end

  def volume
    @length * @height * @width
  end

  def cost_to_ship
   ( (self.volume * Math.sqrt(@weight)) * 0.59 ).to_i
  end
end

