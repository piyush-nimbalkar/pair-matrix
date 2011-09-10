class Pairing < ActiveRecord::Base
  belongs_to :employee
  belongs_to :pair, :class_name => "Employee"
end
