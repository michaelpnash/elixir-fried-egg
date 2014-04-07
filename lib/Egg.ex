defrecord Egg, cooked: false, size: "large"

defrecord RawEgg, size: "large"

defrecord CookedEgg, size: "large"

defrecord Bacon, cooked: false

defprotocol Cook do
  def cook(cookable)
end

defimpl Cook, for: RawEgg do
  def cook(egg) do
    CookedEgg.new(size: egg.size)
  end
end

