class TblleasesController < ApplicationController
  def index
    @tblleases = Tbllease.all

    render("tblleases/index.html.erb")
  end

  def show
    @tbllease = Tbllease.find(params[:id])

    render("tblleases/show.html.erb")
  end

  def new
    @tbllease = Tbllease.new

    render("tblleases/new.html.erb")
  end

  def create
    @tbllease = Tbllease.new

    @tbllease.apartment_id = params[:apartment_id]
    @tbllease.lease_start = params[:lease_start]
    @tbllease.lease_end = params[:lease_end]
    @tbllease.daily_rate = params[:daily_rate]
    @tbllease.tenant_id = params[:tenant_id]
    @tbllease.tenant_last = params[:tenant_last]
    @tbllease.deposit = params[:deposit]

    save_status = @tbllease.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/tblleases/new", "/create_tbllease"
        redirect_to("/tblleases")
      else
        redirect_back(:fallback_location => "/", :notice => "Tbllease created successfully.")
      end
    else
      render("tblleases/new.html.erb")
    end
  end

  def edit
    @tbllease = Tbllease.find(params[:id])

    render("tblleases/edit.html.erb")
  end

  def update
    @tbllease = Tbllease.find(params[:id])

    @tbllease.apartment_id = params[:apartment_id]
    @tbllease.lease_start = params[:lease_start]
    @tbllease.lease_end = params[:lease_end]
    @tbllease.daily_rate = params[:daily_rate]
    @tbllease.tenant_id = params[:tenant_id]
    @tbllease.tenant_last = params[:tenant_last]
    @tbllease.deposit = params[:deposit]

    save_status = @tbllease.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/tblleases/#{@tbllease.id}/edit", "/update_tbllease"
        redirect_to("/tblleases/#{@tbllease.id}", :notice => "Tbllease updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Tbllease updated successfully.")
      end
    else
      render("tblleases/edit.html.erb")
    end
  end

  def destroy
    @tbllease = Tbllease.find(params[:id])

    @tbllease.destroy

    if URI(request.referer).path == "/tblleases/#{@tbllease.id}"
      redirect_to("/", :notice => "Tbllease deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Tbllease deleted.")
    end
  end
end
