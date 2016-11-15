Rails.application.routes.draw do
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
