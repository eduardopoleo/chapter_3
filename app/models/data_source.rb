class DataSource
  def initialize(computer_id)
    @computer = Computer.find(computer_id)
  end

  def get_cpu_info
    @computer.cpu.info
  end

  def get_cpu_price
    @computer.cpu.price
  end

  def get_keyboard_info
    @computer.keyboard.info
  end

    def get_keyboard_price
    @computer.keyboard.price
  end

  def get_mouse_info
    @computer.cpu.info
  end

  def get_mouse_price
    @computer.cpu.price
  end

  def get_display_info
    @computer.cpu.info
  end

  def get_display_price
    @computer.cpu.price
  end
end
