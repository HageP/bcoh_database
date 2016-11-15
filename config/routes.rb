Rails.application.routes.draw do
  # Routes for the Tbltenant resource:
  # CREATE
  get "/tbltenants/new", :controller => "tbltenants", :action => "new"
  post "/create_tbltenant", :controller => "tbltenants", :action => "create"

  # READ
  get "/tbltenants", :controller => "tbltenants", :action => "index"
  get "/tbltenants/:id", :controller => "tbltenants", :action => "show"

  # UPDATE
  get "/tbltenants/:id/edit", :controller => "tbltenants", :action => "edit"
  post "/update_tbltenant/:id", :controller => "tbltenants", :action => "update"

  # DELETE
  get "/delete_tbltenant/:id", :controller => "tbltenants", :action => "destroy"
  #------------------------------

  # Routes for the Tbllease resource:
  # CREATE
  get "/tblleases/new", :controller => "tblleases", :action => "new"
  post "/create_tbllease", :controller => "tblleases", :action => "create"

  # READ
  get "/tblleases", :controller => "tblleases", :action => "index"
  get "/tblleases/:id", :controller => "tblleases", :action => "show"

  # UPDATE
  get "/tblleases/:id/edit", :controller => "tblleases", :action => "edit"
  post "/update_tbllease/:id", :controller => "tblleases", :action => "update"

  # DELETE
  get "/delete_tbllease/:id", :controller => "tblleases", :action => "destroy"
  #------------------------------

  # Routes for the Tblapartment resource:
  # CREATE
  get "/tblapartments/new", :controller => "tblapartments", :action => "new"
  post "/create_tblapartment", :controller => "tblapartments", :action => "create"

  # READ
  get "/tblapartments", :controller => "tblapartments", :action => "index"
  get "/tblapartments/:id", :controller => "tblapartments", :action => "show"

  # UPDATE
  get "/tblapartments/:id/edit", :controller => "tblapartments", :action => "edit"
  post "/update_tblapartment/:id", :controller => "tblapartments", :action => "update"

  # DELETE
  get "/delete_tblapartment/:id", :controller => "tblapartments", :action => "destroy"
  #------------------------------

  # Routes for the Tblbuilding resource:
  # CREATE
  get "/tblbuildings/new", :controller => "tblbuildings", :action => "new"
  post "/create_tblbuilding", :controller => "tblbuildings", :action => "create"

  # READ
  get "/tblbuildings", :controller => "tblbuildings", :action => "index"
  get "/tblbuildings/:id", :controller => "tblbuildings", :action => "show"

  # UPDATE
  get "/tblbuildings/:id/edit", :controller => "tblbuildings", :action => "edit"
  post "/update_tblbuilding/:id", :controller => "tblbuildings", :action => "update"

  # DELETE
  get "/delete_tblbuilding/:id", :controller => "tblbuildings", :action => "destroy"
  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
