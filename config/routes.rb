Rails.application.routes.draw do
  get("/", :controller => "math", :action => "main_page")
  get("/square/results", :controller => "math", :action => "square_result")

  get("/square_root/new", :controller => "math", :action => "square_root_form")
  get("/square_root/results", :controller => "math", :action => "square_root_result")
end
