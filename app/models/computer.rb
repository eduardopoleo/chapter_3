class Computer < ActiveRecord::Base
  has_many :parts
#parts queries
  def cpu
    parts.where(part_type: 'cpu').first
  end

  def keyboard
    parts.where(part_type: 'keyboard').first
  end

  def mouse
    parts.where(part_type: 'mouse').first
  end

  def display
    parts.where(part_type: 'display').first
  end

#getters
  def get_cpu_info
    cpu.info
  end

  def get_cpu_price
    cpu.price
  end

  def get_keyboard_info
    keyboard.info
  end

  def get_keyboard_price
    keyboard.price
  end

  def get_mouse_info
    mouse.info
  end

  def get_mouse_price
    mouse.price
  end

  def get_display_info
    display.info
  end

  def get_display_price
    display.price
  end
end
