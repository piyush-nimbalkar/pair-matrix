require 'spec_helper'

describe Employee do
  before(:each) do
    @employee_attr = {:name => "FooBar"}
  end

  it "should create a new instance of given valid attributes" do
    Employee.create!(@employee_attr)
  end

  it "should have a name" do
    no_name_employee = Employee.new(@employee_attr.merge(:name => ""))
    no_name_employee.should_not be_valid
  end
end
