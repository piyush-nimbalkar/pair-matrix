PairMatrix::Application.routes.draw do
  root :to => "home#index"
  match "employees" => "employees#index", :as => :employees
  match "update_pair" => "pairings#index", :as => :pairing
  match "updated_pair" => "pairings#create", :as => :paired
end
