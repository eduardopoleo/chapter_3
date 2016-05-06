class Computer < ActiveRecord::Base
  has_many :parts
#parts queries
  def get_part(part_type)
    parts.where(part_type: part_type).first
  end

#getters
  def get_cpu_info
    get_part('cpu').info
  end

  def get_cpu_price
    get_part('cpu').price
  end

  def get_keyboard_info
    get_part('keyboard').info
  end

  def get_keyboard_price
    get_part('keyboard').price
  end

  def get_mouse_info
    get_part('mouse').info
  end

  def get_mouse_price
    get_part('mouse').price
  end

  def get_display_info
    get_part('display').info
  end

  def get_display_price
    get_part('display').price
  end
end
