Rails.application.routes.draw do
  get("/", :controller => "math", :action => "main_page")
  get("/square/results", :controller => "math", :action => "square_result")
  get("/square/new", :controller => "math", :action => "main_page")

  get("/square_root/new", :controller => "math", :action => "square_root_form")
  get("/square_root/results", :controller => "math", :action => "square_root_result")

  get("/payment/new", :controller => "math", :action => "payment_form")
  get("/payment/results", :controller => "math", :action => "payment_result")

  get("/random/new", :controller => "math", :action => "random_form")
  get("/random/results", :controller => "math", :action => "random_result")
end
