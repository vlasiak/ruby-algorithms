class ClassicSelectionSort
  def self.call(array)
    n = array.count

    for i in 0..n - 2
      min_i = i

      for j in i + 1..n - 1
        if array[j] < array[min_i]
          min_i = j
        end
      end

      if min_i != i
        temp         = array[i]
        array[i]     = array[min_i]
        array[min_i] = temp
      end
    end

    array
  end
end

class PrettySelectionSort
  def self.call(array)
    n = array.count - 1

    n.times do |i|
      min_i = i

      (i + 1).upto(n) { |j| min_i = j if array[j] < array[min_i] }

      array[min_i], array[i] = array[i], array[min_i] unless min_i == i
    end

    array
  end
end
