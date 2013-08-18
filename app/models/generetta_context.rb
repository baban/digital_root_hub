# encoding: utf-8

class GenerettaContext < ActiveRecord::Base
  attr_accessible :description
  has_many :generetta_cases
  alias :cases :generetta_cases

  def case_table
    cases = self.cases
    matrix = Array.new(cases.pluck(:row).max){ Array.new(cases.pluck(:col).max,nil) }
    cases.each { |cas|  matrix[cas.row-1][cas.col-1]=cas.content }
    matrix
  end
end
