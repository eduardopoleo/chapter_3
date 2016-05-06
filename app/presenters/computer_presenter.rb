class ComputerPresenter
  def initialize(computer)
    @computer = computer
    @computer.methods.grep(/^get_(.*)_info$/) { ComputerPresenter.define_component $1 }
    #find out exactly what grep and this regex do in ruby
  end

  def self.define_component(name) #we have to make this method a singleton becuase we are defining instance methods
    define_method(name) do
      info = @computer.send "get_#{name}_info" #dynamic dispatch
      price = @computer.send "get_#{name}_price"
      result = "#{name.capitalize}: #{info} ($#{price})"
      return "*** You are way overbudget! #{result}" if price.to_i >= 50
      result
    end
  end
end
#sending methods on the fly. Dynamic dispatch
#defining methods on the fly
#dinamically call define components to generate the methods call
