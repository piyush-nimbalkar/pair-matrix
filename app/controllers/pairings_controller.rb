class PairingsController < ApplicationController
  def create
    @employees = Employee.all
    @emp_one = Employee.find_by_name(params[:value1])
    @emp_two = Employee.find_by_name(params[:value2])
    if @emp_one && @emp_two && @emp_one != @emp_two
      pair = @emp_one.pairings.find_by_pair_id(@emp_two.id)
      if !pair
        pair = @emp_one.inverse_pairings.find_by_employee_id(@emp_two.id)
        if !pair
          Pairing.create(:employee_id => @emp_one.id, :pair_id => @emp_two.id, :pairing_frequency => 1)
        else
          increase_count(pair)
        end
      else
        increase_count(pair)
      end
    end
  end

  def increase_count(pair)
    pair.pairing_frequency += 1
    pair.save
  end
end
