class TbltenantsController < ApplicationController
  def index
    @tbltenants = Tbltenant.all

    render("tbltenants/index.html.erb")
  end

  def show
    @tblinvoice = Tblinvoice.new
    @tbllease = Tbllease.new
    @tbltenant = Tbltenant.find(params[:id])

    render("tbltenants/show.html.erb")
  end

  def new
    @tbltenant = Tbltenant.new

    render("tbltenants/new.html.erb")
  end

  def create
    @tbltenant = Tbltenant.new

    @tbltenant.tenant_first = params[:tenant_first]
    @tbltenant.tenant_email = params[:tenant_email]
    @tbltenant.tenant_phone = params[:tenant_phone]

    save_status = @tbltenant.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/tbltenants/new", "/create_tbltenant"
        redirect_to("/tbltenants")
      else
        redirect_back(:fallback_location => "/", :notice => "Tbltenant created successfully.")
      end
    else
      render("tbltenants/new.html.erb")
    end
  end

  def edit
    @tbltenant = Tbltenant.find(params[:id])

    render("tbltenants/edit.html.erb")
  end

  def update
    @tbltenant = Tbltenant.find(params[:id])

    @tbltenant.tenant_first = params[:tenant_first]
    @tbltenant.tenant_email = params[:tenant_email]
    @tbltenant.tenant_phone = params[:tenant_phone]

    save_status = @tbltenant.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/tbltenants/#{@tbltenant.id}/edit", "/update_tbltenant"
        redirect_to("/tbltenants/#{@tbltenant.id}", :notice => "Tbltenant updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Tbltenant updated successfully.")
      end
    else
      render("tbltenants/edit.html.erb")
    end
  end

  def destroy
    @tbltenant = Tbltenant.find(params[:id])

    @tbltenant.destroy

    if URI(request.referer).path == "/tbltenants/#{@tbltenant.id}"
      redirect_to("/", :notice => "Tbltenant deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Tbltenant deleted.")
    end
  end
end
