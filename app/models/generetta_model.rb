class GenerettaModel < ActiveRecord::Base
  attr_accessible :description
  has_many :generetta_methods
end
