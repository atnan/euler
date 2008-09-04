class Integer
  def prime?
    return false unless (self > 1)
    return false if (self % 2 == 0) and not (self == 2)
    unless [2,3].include? self
      return false unless [1, 5].include?(self % 6)
    end

    (4..Math.sqrt(self)).each do |n|
      if (self % n == 0)
        return false
      end
    end
    
    return true
  end
end
