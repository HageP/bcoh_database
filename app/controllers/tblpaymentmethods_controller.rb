class TblpaymentmethodsController < ApplicationController
  def index
    @tblpaymentmethods = Tblpaymentmethod.page(params[:page]).per(10)

    render("tblpaymentmethods/index.html.erb")
  end

  def show
    @tblpayment = Tblpayment.new
    @tblpaymentmethod = Tblpaymentmethod.find(params[:id])

    render("tblpaymentmethods/show.html.erb")
  end

  def new
    @tblpaymentmethod = Tblpaymentmethod.new

    render("tblpaymentmethods/new.html.erb")
  end

  def create
    @tblpaymentmethod = Tblpaymentmethod.new

    @tblpaymentmethod.method = params[:method]

    save_status = @tblpaymentmethod.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/tblpaymentmethods/new", "/create_tblpaymentmethod"
        redirect_to("/tblpaymentmethods")
      else
        redirect_back(:fallback_location => "/", :notice => "Tblpaymentmethod created successfully.")
      end
    else
      render("tblpaymentmethods/new.html.erb")
    end
  end

  def edit
    @tblpaymentmethod = Tblpaymentmethod.find(params[:id])

    render("tblpaymentmethods/edit.html.erb")
  end

  def update
    @tblpaymentmethod = Tblpaymentmethod.find(params[:id])

    @tblpaymentmethod.method = params[:method]

    save_status = @tblpaymentmethod.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/tblpaymentmethods/#{@tblpaymentmethod.id}/edit", "/update_tblpaymentmethod"
        redirect_to("/tblpaymentmethods/#{@tblpaymentmethod.id}", :notice => "Tblpaymentmethod updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Tblpaymentmethod updated successfully.")
      end
    else
      render("tblpaymentmethods/edit.html.erb")
    end
  end

  def destroy
    @tblpaymentmethod = Tblpaymentmethod.find(params[:id])

    @tblpaymentmethod.destroy

    if URI(request.referer).path == "/tblpaymentmethods/#{@tblpaymentmethod.id}"
      redirect_to("/", :notice => "Tblpaymentmethod deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Tblpaymentmethod deleted.")
    end
  end
end
