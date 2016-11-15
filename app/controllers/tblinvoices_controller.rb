class TblinvoicesController < ApplicationController
  def index
    @tblinvoices = Tblinvoice.all

    render("tblinvoices/index.html.erb")
  end

  def show
    @tblpayment = Tblpayment.new
    @tblinvoice = Tblinvoice.find(params[:id])

    render("tblinvoices/show.html.erb")
  end

  def new
    @tblinvoice = Tblinvoice.new

    render("tblinvoices/new.html.erb")
  end

  def create
    @tblinvoice = Tblinvoice.new

    @tblinvoice.invoice_prepared = params[:invoice_prepared]
    @tblinvoice.invoice_total = params[:invoice_total]
    @tblinvoice.invoice_balance = params[:invoice_balance]
    @tblinvoice.tenant_id = params[:tenant_id]
    @tblinvoice.invoice_start = params[:invoice_start]
    @tblinvoice.invoice_end = params[:invoice_end]

    save_status = @tblinvoice.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/tblinvoices/new", "/create_tblinvoice"
        redirect_to("/tblinvoices")
      else
        redirect_back(:fallback_location => "/", :notice => "Tblinvoice created successfully.")
      end
    else
      render("tblinvoices/new.html.erb")
    end
  end

  def edit
    @tblinvoice = Tblinvoice.find(params[:id])

    render("tblinvoices/edit.html.erb")
  end

  def update
    @tblinvoice = Tblinvoice.find(params[:id])

    @tblinvoice.invoice_prepared = params[:invoice_prepared]
    @tblinvoice.invoice_total = params[:invoice_total]
    @tblinvoice.invoice_balance = params[:invoice_balance]
    @tblinvoice.tenant_id = params[:tenant_id]
    @tblinvoice.invoice_start = params[:invoice_start]
    @tblinvoice.invoice_end = params[:invoice_end]

    save_status = @tblinvoice.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/tblinvoices/#{@tblinvoice.id}/edit", "/update_tblinvoice"
        redirect_to("/tblinvoices/#{@tblinvoice.id}", :notice => "Tblinvoice updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Tblinvoice updated successfully.")
      end
    else
      render("tblinvoices/edit.html.erb")
    end
  end

  def destroy
    @tblinvoice = Tblinvoice.find(params[:id])

    @tblinvoice.destroy

    if URI(request.referer).path == "/tblinvoices/#{@tblinvoice.id}"
      redirect_to("/", :notice => "Tblinvoice deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Tblinvoice deleted.")
    end
  end
end
