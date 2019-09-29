class InvoicesController < ApplicationController

  def index
    if params[:query].present?
      @invoices = policy_scope(Invoice).global_search(params[:query]).uniq
    else
      @invoices = policy_scope(Invoice).uniq
    end
  end

  def show
    skip_authorization
    @case = Case.find(params[:case_id])
    respond_to do |format|
      format.html
      format.pdf do
        @format = :pdf
        render pdf: "Invoice No. #{@case.invoice.id}",
               page_size: 'A4',
               template: "invoices/show.html.erb",
               layout: "pdf.html",
               orientation: "portrait",
               lowquality: true,
               zoom: 1,
               dpi: 75
      end
    end
  end

  def create
    skip_authorization
    @case = Case.find(params[:case_id])
    invoice = @case.invoice || @case.build_invoice(vat: 20.0)

    if invoice.save
      redirect_to case_invoice_path(@case)
    else
      redirect_to case_path(@case)
    end
  end
end
