class Triangle
  attr_accessor :data
  
  def initialize(data_str)
    @data = []
    data_str.each_line do |line|
      row = line.strip.split(/ /).map { |char| [char.to_i, 0] }
      data << row
    end
  end
  
  def max_sum_of_path
    (data.size-2).downto(0) do |row|
      data[row].each_with_index do |point, col|
        below_left = data[row+1][col][0] + data[row+1][col][1]
        below_right = data[row+1][col+1][0] + data[row+1][col+1][1]
        cost = below_left > below_right ? below_left : below_right
        data[row][col][1] = cost
      end
    end
    return data[0][0][0] + data[0][0][1]
  end
end