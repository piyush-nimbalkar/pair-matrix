PairMatrix::Application.routes.draw do
  root :to => "home#index"
  match "employees" => "employees#index", :as => :employees
  match "update_pair" => "pairings#create", :as => :pairing
end
