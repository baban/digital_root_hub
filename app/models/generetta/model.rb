# encoding: utf-8

class Generetta::Model < ActiveRecord::Base
  attr_accessible :description
  has_many :generetta_methods, :as => :parent
  alias :methods :generetta_methods

  def to_test(mode= :rspec)
    methods = self.methods.map { |o| o.to_test(mode) }*"\n"
    <<-CONTEXT
    describe "#{self.title}" do
      #{methods}
    end
    CONTEXT
  end
end
