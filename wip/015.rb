# Problem 15:
# Starting in the top left corner of a 2x2 grid, there are 6 routes (without
# backtracking) to the bottom right corner. How many routes are there through a 20x20
# grid?

GRID_SIZE = [3,3]

class Array
  def x
    return self[0]
  end

  def y
    return self[1]
  end

  def next_points(travelled_points=[])
    nps = []
    next_point = [self.x + 1, self.y + 1]
    if (next_point.x < GRID_SIZE.x)
      nps << [next_point.x, self.y]
    end
    if (next_point.y < GRID_SIZE.y)
      nps << [self.x, next_point.y]
    end
    return nps -= travelled_points
  end
end



current_point = [0,0]

working_paths = [[current_point]]
next_points = current_point.next_points
next_points.each do |point|
  old_working_paths = working_paths
  working_paths = []
  old_working_paths.each do |path|
    if path.last == current_point
      working_paths << path + point
    end
  end
end
puts working_paths.inspect

# Answer:
# Time:

# The following are the paths for a 2x2 grid:
#paths = [
#  [0,0],[0,1],[0,2],[1,2],[2,2]
#  [0,0],[0,1],[1,1],[1,2],[2,2]
#  [0,0],[0,1],[1,1],[2,1],[2,2]
#  [0,0],[1,0],[1,1],[1,2],[2,2]
#  [0,0],[1,0],[1,1],[2,1],[2,2]
#  [0,0],[1,0],[2,0],[2,1],[2,2]
#]
