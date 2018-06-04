require "pry"
require_relative "multilinguist"

class Quote < Multilinguist

  def initialize
    @phrases = [
      "Hello, how are you doing today?",
      "I am well, thank you.",
      "The weather is beautiful today.",
      "One beer please"]
  end

  def phrases
    @phrases
  end

  def new_phrase(phrase)
    @phrases << phrase
  end

  def say_phrase(num)
    trans_phrase = self.say_in_local_language(@phrases[num])
    return trans_phrase
  end

  def random_phrase
    num = rand(@phrases.length)
    random_phrase = self.say_in_local_language(@phrases[num])
  end
end

new = Quote.new
new.travel_to("Spain")
binding.pry
