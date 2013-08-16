class GenerettaModel < ActiveRecord::Base
  attr_accessible :description
  has_many :generetta_methods
  alias :methods :generetta_methods
end
