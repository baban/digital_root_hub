# encoding: utf-8

class GenerettaMethod < ActiveRecord::Base
  attr_accessible :title
  has_many :generetta_contexts
  alias :contexts :generetta_contexts

  def to_test(mode = :rspec)
    contexts = self.contexts.map{ |o| o.to_test(mode) }*"\n"
    <<-CONTEXT
    describe "#{self.description}" do
      #{contexts}
    end
    CONTEXT
  end
end
