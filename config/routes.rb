PairMatrix::Application.routes.draw do
  root :to => "home#index"
  match "employees" => "employees#index", :as => :employees
end
