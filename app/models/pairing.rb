class Pairing < ActiveRecord::Base
  belongs_to :employee
  belongs_to :pair, :class_name => "Employee"

  validates :employee_id, :presence => true
  validates :pair_id, :presence => true
end
