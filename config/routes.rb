Rails.application.routes.draw do
  get("/", { :controller => "misc", :action => "homepage" })

  # add youngest director page
  get("/directors/youngest", { :controller => "directors", :action => "young" })

   # add oldest director page
   get("/directors/oldest", { :controller => "directors", :action => "old" })

  # name of table making
  get("/directors", { :controller => "directors", :action => "index" })
  # show = action that shows details of one record, convention
  get("/directors/:the_id", { :controller => "directors", :action => "show" })
  # add movies pages
  get("/movies/", { :controller => "movies", :action => "index" })
  get("/movies/:the_id", { :controller => "movies", :action => "show" })
  # add actors pages
  get("/actors/", { :controller => "actors", :action => "index" })
  get("/actors/:the_id", { :controller => "actors", :action => "show" })


end
