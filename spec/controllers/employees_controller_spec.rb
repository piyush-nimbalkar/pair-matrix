require 'spec_helper'

describe EmployeesController do

  describe "GET 'index'" do
    it "should be successful" do
      get 'index'
      response.should be_success
    end

    it "should assign the emloyees" do
      Employee.should_receive(:all).and_return(employees = mock(:employees))
      get :index
      assigns[:employees].should == employees
    end
  end

end
