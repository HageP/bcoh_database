Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  root :to => "tblbuildings#index"
  # Routes for the Tblpaymentmethod resource:
  # CREATE
  get "/tblpaymentmethods/new", :controller => "tblpaymentmethods", :action => "new"
  post "/create_tblpaymentmethod", :controller => "tblpaymentmethods", :action => "create"

  # READ
  get "/tblpaymentmethods", :controller => "tblpaymentmethods", :action => "index"
  get "/tblpaymentmethods/:id", :controller => "tblpaymentmethods", :action => "show"

  # UPDATE
  get "/tblpaymentmethods/:id/edit", :controller => "tblpaymentmethods", :action => "edit"
  post "/update_tblpaymentmethod/:id", :controller => "tblpaymentmethods", :action => "update"

  # DELETE
  get "/delete_tblpaymentmethod/:id", :controller => "tblpaymentmethods", :action => "destroy"
  #------------------------------

  # Routes for the Tblpayment resource:
  # CREATE
  get "/tblpayments/new", :controller => "tblpayments", :action => "new"
  post "/create_tblpayment", :controller => "tblpayments", :action => "create"

  # READ
  get "/tblpayments", :controller => "tblpayments", :action => "index"
  get "/tblpayments/:id", :controller => "tblpayments", :action => "show"

  # UPDATE
  get "/tblpayments/:id/edit", :controller => "tblpayments", :action => "edit"
  post "/update_tblpayment/:id", :controller => "tblpayments", :action => "update"

  # DELETE
  get "/delete_tblpayment/:id", :controller => "tblpayments", :action => "destroy"
  #------------------------------

  # Routes for the Tblinvoice resource:
  # CREATE
  get "/tblinvoices/new", :controller => "tblinvoices", :action => "new"
  post "/create_tblinvoice", :controller => "tblinvoices", :action => "create"

  # READ
  get "/tblinvoices", :controller => "tblinvoices", :action => "index"
  get "/tblinvoices/:id", :controller => "tblinvoices", :action => "show"

  # UPDATE
  get "/tblinvoices/:id/edit", :controller => "tblinvoices", :action => "edit"
  post "/update_tblinvoice/:id", :controller => "tblinvoices", :action => "update"

  # DELETE
  get "/delete_tblinvoice/:id", :controller => "tblinvoices", :action => "destroy"
  #------------------------------

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
