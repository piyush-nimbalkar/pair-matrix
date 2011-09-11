class Employee < ActiveRecord::Base
  attr_accessible :name

  has_many :pairings
  has_many :pairs, :through => :pairings
  has_many :inverse_pairings, :class_name => "Pairing", :foreign_key => "pair_id"
  has_many :inverse_pairs, :through => :inverse_pairings, :source => :employee

  validates  :name, :presence => true
end
