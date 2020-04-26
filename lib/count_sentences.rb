require 'pry'

class String

  def sentence?
    self.end_with?(".")
   # binding.pry
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences

    new_string = self.split(" ")
    next_string = new_string.select {|el| el.sentence? || el.question? || el.exclamation? }
    next_string.count
  end
end


my_string = String.new
my_string