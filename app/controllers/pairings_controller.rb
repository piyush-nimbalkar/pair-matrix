class PairingsController < ApplicationController
  def create
    @employees = Employee.all
  end
end
