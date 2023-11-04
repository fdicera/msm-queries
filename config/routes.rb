Rails.application.routes.draw do
  get("/", { :controller => "misc", :action => "homepage" })
  # name of table making
  get("/directors", { :controller => "directors", :action => "index" })
  # show = action that shows details of one record, convention
  get("/directors/:the_id", { :controller => "directors", :action => "show" })
end
