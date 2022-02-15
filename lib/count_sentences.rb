require 'pry'

class String

  def sentence?
    self.end_with?(".")
    
  end

  def question?
    self.end_with?("?")

  end

  def exclamation?
    self.end_with?('!')
  end

  def count_sentences
    p self.split(/[.!?]/)
    self.split(/[.!?]\s/).length
  end
end


class Dog
  attr_accessor :name, :owner

  def initialize(name)
    @name = name
  end

  def bark
    puts "Woof!"
  end

  def get_adopted(owner_name)
    self.owner = owner_name
  end

end


binding.pry