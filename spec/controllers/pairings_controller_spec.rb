require 'spec_helper'

describe PairingsController do

  describe "GET 'create'" do
    it "should be successful" do
      get 'create'
      response.should be_success
    end

    it "should assign the emloyees" do
      Employee.should_receive(:all).and_return(employees = mock(:employees))
      get :create
      assigns[:employees].should == employees
    end
  end

end
