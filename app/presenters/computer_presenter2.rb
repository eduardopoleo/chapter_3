
class ComputerPresenter2 < BasicObject
  def initialize(computer)
    @computer = computer
  end

  def method_missing(name) #ghost method
    info = @computer.send "get_#{name}_info"
    price = @computer.send "get_#{name}_price"
    result = "#{name.capitalize}: #{info} ($#{price})"
    return "*** You are way overbudget! #{result}" if price.to_i >= 50
    result
  end

  #we have to define this too so that respond_to does not lie
  def respond_to_missing?(method, include_private=false)
    @computer.respond_to?("get_#{method}_info") || super
  end

  #method missing seems easier but is dangerous
  #respond_to_missing?
  #Another issue that we might encounter is the display issue! which we do in this case becuase our method definition collide with an already existing method
  #by using this we lost the ability of asking respond_to? ...so we there is the tradeoff
end
