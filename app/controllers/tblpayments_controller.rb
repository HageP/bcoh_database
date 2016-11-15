class TblpaymentsController < ApplicationController
  def index
    @tblpayments = Tblpayment.all

    render("tblpayments/index.html.erb")
  end

  def show
    @tblpayment = Tblpayment.find(params[:id])

    render("tblpayments/show.html.erb")
  end

  def new
    @tblpayment = Tblpayment.new

    render("tblpayments/new.html.erb")
  end

  def create
    @tblpayment = Tblpayment.new

    @tblpayment.invoice_id = params[:invoice_id]
    @tblpayment.payment_date = params[:payment_date]
    @tblpayment.payment_amount = params[:payment_amount]
    @tblpayment.paymentmethod_id = params[:paymentmethod_id]
    @tblpayment.tenant_id = params[:tenant_id]

    save_status = @tblpayment.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/tblpayments/new", "/create_tblpayment"
        redirect_to("/tblpayments")
      else
        redirect_back(:fallback_location => "/", :notice => "Tblpayment created successfully.")
      end
    else
      render("tblpayments/new.html.erb")
    end
  end

  def edit
    @tblpayment = Tblpayment.find(params[:id])

    render("tblpayments/edit.html.erb")
  end

  def update
    @tblpayment = Tblpayment.find(params[:id])

    @tblpayment.invoice_id = params[:invoice_id]
    @tblpayment.payment_date = params[:payment_date]
    @tblpayment.payment_amount = params[:payment_amount]
    @tblpayment.paymentmethod_id = params[:paymentmethod_id]
    @tblpayment.tenant_id = params[:tenant_id]

    save_status = @tblpayment.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/tblpayments/#{@tblpayment.id}/edit", "/update_tblpayment"
        redirect_to("/tblpayments/#{@tblpayment.id}", :notice => "Tblpayment updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Tblpayment updated successfully.")
      end
    else
      render("tblpayments/edit.html.erb")
    end
  end

  def destroy
    @tblpayment = Tblpayment.find(params[:id])

    @tblpayment.destroy

    if URI(request.referer).path == "/tblpayments/#{@tblpayment.id}"
      redirect_to("/", :notice => "Tblpayment deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Tblpayment deleted.")
    end
  end
end
