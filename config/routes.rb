Rails.application.routes.draw do
  get("/", :controller => "math", :action: "main_page")
end
