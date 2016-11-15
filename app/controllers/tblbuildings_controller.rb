class TblbuildingsController < ApplicationController
  def index
    @q = Tblbuilding.ransack(params[:q])
    @tblbuildings = @q.result(:distinct => true).includes(:tblapartments).page(params[:page]).per(10)

    render("tblbuildings/index.html.erb")
  end

  def show
    @tblapartment = Tblapartment.new
    @tblbuilding = Tblbuilding.find(params[:id])

    render("tblbuildings/show.html.erb")
  end

  def new
    @tblbuilding = Tblbuilding.new

    render("tblbuildings/new.html.erb")
  end

  def create
    @tblbuilding = Tblbuilding.new

    @tblbuilding.buildingname = params[:buildingname]
    @tblbuilding.buildingaddress = params[:buildingaddress]
    @tblbuilding.buildingowner = params[:buildingowner]
    @tblbuilding.buildingzip = params[:buildingzip]
    @tblbuilding.buildingcity = params[:buildingcity]

    save_status = @tblbuilding.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/tblbuildings/new", "/create_tblbuilding"
        redirect_to("/tblbuildings")
      else
        redirect_back(:fallback_location => "/", :notice => "Tblbuilding created successfully.")
      end
    else
      render("tblbuildings/new.html.erb")
    end
  end

  def edit
    @tblbuilding = Tblbuilding.find(params[:id])

    render("tblbuildings/edit.html.erb")
  end

  def update
    @tblbuilding = Tblbuilding.find(params[:id])

    @tblbuilding.buildingname = params[:buildingname]
    @tblbuilding.buildingaddress = params[:buildingaddress]
    @tblbuilding.buildingowner = params[:buildingowner]
    @tblbuilding.buildingzip = params[:buildingzip]
    @tblbuilding.buildingcity = params[:buildingcity]

    save_status = @tblbuilding.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/tblbuildings/#{@tblbuilding.id}/edit", "/update_tblbuilding"
        redirect_to("/tblbuildings/#{@tblbuilding.id}", :notice => "Tblbuilding updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Tblbuilding updated successfully.")
      end
    else
      render("tblbuildings/edit.html.erb")
    end
  end

  def destroy
    @tblbuilding = Tblbuilding.find(params[:id])

    @tblbuilding.destroy

    if URI(request.referer).path == "/tblbuildings/#{@tblbuilding.id}"
      redirect_to("/", :notice => "Tblbuilding deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Tblbuilding deleted.")
    end
  end
end
