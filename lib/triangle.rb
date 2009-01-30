class Triangle
  attr_accessor :data
  
  def initialize(triangle_string)
    @data = triangle_string.strip.split(/\n/).map do |row| 
      row.split(/ /).map do |value|
        value.to_i
      end
    end.reverse
  end
  
  def max_sum_of_path
    data.inject { |running_total, current_line|
      running_total.each_cons(2).map { |pair|
        pair.max
      }.zip(current_line).map { |pair|
        pair[0] + pair[1]
      }
    }
  end
end
