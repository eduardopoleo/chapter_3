class ComputerPresenter
  def initialize(computer)
    @computer = computer
  end

  def cpu
    info = @computer.get_cpu_info
    price = @computer.get_cpu_price
    result = "Cpu: #{info} ($#{price})"
    return "*** You are way overbudget! #{result}" if price.to_i >= 50
    result
  end

  def keyboard
    info = @computer.get_keyboard_info
    price = @computer.get_keyboard_price
    result = "Keyboard: #{info} ($#{price})"
    return "*** You are way overbudget! #{result}" if price.to_i >= 50
    result
  end

  def mouse
    info = @computer.get_mouse_info
    price = @computer.get_mouse_price
    result = "Mouse: #{info} ($#{price})"
    return "*** You are way overbudget! #{result}" if price.to_i >= 50
    result
  end

  def display
    info = @computer.get_display_info
    price = @computer.get_display_price
    result = "Display: #{info} ($#{price})"
    return "*** You are way overbudget! #{result}" if price.to_i >= 50
    result
  end
end
