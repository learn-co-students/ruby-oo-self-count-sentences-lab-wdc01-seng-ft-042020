require 'pry'

class String

  def sentence?
    self.end_with?('.')
  end

  def question?
    self.end_with?('?')
  end

  def exclamation?
    self.end_with?('!')
  end

  def count_sentences
    #binding.pry
    complex_sentence = self.split(/[.?!]/).reject {|i| i.empty?}
    complex_sentence.count
  end

end