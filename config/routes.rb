Rails.application.routes.draw do
  get("/", { :controller => "misc", :action => "homepage" })
  # name of table making
  get("/directors", { :controller => "directors", :action => "index" })
  # show = action that shows details of one record, convention
  get("/directors/:the_id", { :controller => "directors", :action => "show" })
  # add movies pages
  get("/movies/", { :controller => "movies", :action => "index" })
  get("/movies/:the_id", { :controller => "movies", :action => "show" })
end
