require 'spec_helper'

describe Pairing do
  before(:each) do
    @pairing_attr = {:employee_id => "1", :pair_id => 2, :pairing_frequency => 3}
  end

  it "should create a new instance of given valid attributes" do
    Pairing.create!(@pairing_attr)
  end

  it "should have a employee_id" do
    no_employee = Pairing.new(@pairing_attr.merge(:employee_id => nil))
    no_employee.should_not be_valid
  end

  it "should have a pair_id" do
    no_pair = Pairing.new(@pairing_attr.merge(:pair_id => nil))
    no_pair.should_not be_valid
  end
end
