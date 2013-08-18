# encoding: utf-8

class GenerettaContext < ActiveRecord::Base
  attr_accessible :description
  has_many :generetta_cases
  has_many :generetta_context_filters
  has_many :generetta_row_labels
  has_many :generetta_col_labels
  alias :cases :generetta_cases
  alias :row_labels :generetta_row_labels
  alias :col_labels :generetta_col_labels
  alias :context_filters :generetta_context_filters

  def case_table
    cases = self.cases
    matrix = Array.new(cases.pluck(:row).max+1){ Array.new(cases.pluck(:col).max+1,nil) }
    cases.each { |cas| matrix[cas.row][cas.col]=cas.content }
    self.row_labels.each.with_index { |cas,i| matrix[0][i+1]=cas.label }
    self.col_labels.each.with_index { |cas,i| matrix[i+1][0]=cas.label }
    matrix
  end
end
