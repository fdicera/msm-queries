Rails.application.routes.draw do
  get("/", { :controller => "misc", :action => "homepage" })
  # name of table making
  get("/directors", { :controller => "directors", :action => "index" })
end
