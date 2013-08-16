class GenerettaMethod < ActiveRecord::Base
  attr_accessible :title
  has_many :generetta_contexts
  alias :contexts :generetta_contexts
end
