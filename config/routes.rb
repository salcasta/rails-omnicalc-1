Rails.application.routes.draw do
  get("/", :controller => "math", :action => "main_page")
  get("/square/results", :controller => "math", :action => "square_result")
end
