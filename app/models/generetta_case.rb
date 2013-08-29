# encoding: utf-8

class GenerettaCase < ActiveRecord::Base
  attr_accessible :row, :col, :description, :content

  def to_test(mode = :rspec)
tmpl=<<-TMPL
  it "#{self.description}" do
    #{self.content}
  end
TMPL
  end
end
