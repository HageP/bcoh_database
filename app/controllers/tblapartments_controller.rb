class TblapartmentsController < ApplicationController
  def index
    @tblapartments = Tblapartment.all

    render("tblapartments/index.html.erb")
  end

  def show
    @tblapartment = Tblapartment.find(params[:id])

    render("tblapartments/show.html.erb")
  end

  def new
    @tblapartment = Tblapartment.new

    render("tblapartments/new.html.erb")
  end

  def create
    @tblapartment = Tblapartment.new

    @tblapartment.building_id = params[:building_id]
    @tblapartment.apartmentnumber = params[:apartmentnumber]
    @tblapartment.bedrooms = params[:bedrooms]
    @tblapartment.bathrooms = params[:bathrooms]
    @tblapartment.monthlycost = params[:monthlycost]
    @tblapartment.standard_rate = params[:standard_rate]
    @tblapartment.isactive = params[:isactive]

    save_status = @tblapartment.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/tblapartments/new", "/create_tblapartment"
        redirect_to("/tblapartments")
      else
        redirect_back(:fallback_location => "/", :notice => "Tblapartment created successfully.")
      end
    else
      render("tblapartments/new.html.erb")
    end
  end

  def edit
    @tblapartment = Tblapartment.find(params[:id])

    render("tblapartments/edit.html.erb")
  end

  def update
    @tblapartment = Tblapartment.find(params[:id])

    @tblapartment.building_id = params[:building_id]
    @tblapartment.apartmentnumber = params[:apartmentnumber]
    @tblapartment.bedrooms = params[:bedrooms]
    @tblapartment.bathrooms = params[:bathrooms]
    @tblapartment.monthlycost = params[:monthlycost]
    @tblapartment.standard_rate = params[:standard_rate]
    @tblapartment.isactive = params[:isactive]

    save_status = @tblapartment.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/tblapartments/#{@tblapartment.id}/edit", "/update_tblapartment"
        redirect_to("/tblapartments/#{@tblapartment.id}", :notice => "Tblapartment updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Tblapartment updated successfully.")
      end
    else
      render("tblapartments/edit.html.erb")
    end
  end

  def destroy
    @tblapartment = Tblapartment.find(params[:id])

    @tblapartment.destroy

    if URI(request.referer).path == "/tblapartments/#{@tblapartment.id}"
      redirect_to("/", :notice => "Tblapartment deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Tblapartment deleted.")
    end
  end
end
