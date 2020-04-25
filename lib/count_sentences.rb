require 'pry'

class String

  def sentence?
    self[-1] == "."
  end
  
  def question?
    self[-1] == "?"
  end
  
  def exclamation?
    self[-1] == "!"
  end
  
  def count_sentences
    split = self.split(" ")
    count = split.select {|el| el.sentence? || el.question? || el.exclamation?}
    count.count
  end

end