require_relative "multilinguist"

class Mathgenuis < Multilinguist

  def sum(array)
    message = "The total is:"
    trans_message = self.say_in_local_language(message)
    puts "#{trans_message} #{array.sum}"
    return array.sum
  end

end

nums = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
