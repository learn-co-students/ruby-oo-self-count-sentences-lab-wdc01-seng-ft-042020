require 'pry'

class String

  def sentence?
  self.end_with?(".") ? true : false
  end

  def question?
    self.end_with?("?") ? true : false
  end

  def exclamation?
    self.end_with?("!") ? true : false
  end

  def count_sentences
    sen = self.split.select do |str|
      str.end_with?("!", "?", ".")
    end
    sen.count
  
    #self.split(/\.|\?|\!/).delete_if {|w| w.size < 2}.size
  #binding.pry
  
  end


end