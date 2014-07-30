class Parcel
  def initialize(length, width, height, weight)
    @length = length
    @width = width
    @height = height
    @weight = weight
  end

  def volume
    @length * @width * @height
  end

  def cost_to_ship
    volume = @length * @width * @height
    ((volume + @weight) * 0.15).round(2)
  end
end
