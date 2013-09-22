# encoding: utf-8

class Generetta::Controller < ActiveRecord::Base
  attr_accessible :description
  has_many :generetta_methods, :as => :parent
end
