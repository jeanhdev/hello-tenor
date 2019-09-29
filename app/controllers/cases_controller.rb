class CasesController < ApplicationController
  before_action :set_case, only: [:show, :edit, :update]

  def index
    @case = Case.new
    if params[:query].present?
      @cases = policy_scope(Case).global_search(params[:query])
    else
      @cases = policy_scope(Case)
    end
  end

  def create
    @case = Case.new(case_params)
    @case.lawyer = current_user.lawyer
    user = User.find_by(email: params[:case][:email])

    if user.nil?
      business = Business.new(business_params)

      user = User.create(
        email: params[:case][:email],
        first_name: params[:case][:first_name],
        last_name: params[:case][:last_name],
        password: "12345678",
        business: business
      )
    end

    @case.user = user
    business = Business.find_by(name: params[:business_infos][:name])
    if business.nil?
      business = Business.create(
        name: params[:business_infos][:name],
        address: params[:business_infos][:address],
        phone: params[:business_infos][:phone]
      )
    end
    @case.user.update!(business: business)
    @case.status = 'En attente'
    authorize @case
    if @case.save
      flash[:notice] = 'Votre affaire a bien été créée.'
      redirect_to cases_path
    else
      @cases = policy_scope(Case)
      flash[:alert] = "Votre affaire n'a pu être créée."
      render 'cases/index'
    end
  end

  def show
    @case = Case.find(params[:id])
    @active = true
    authorize @case
    @notification = Notification.new

    @pieces = @case.documents.pieces
    @letters = @case.documents.letters
    @conclusions = @case.documents.conclusions
    @conclusions_opponent = @case.documents.conclusions_opponent
  end

  def edit
  end

  def update
    authorize @case
    if @case.update(case_params)
      # @case.contacted = true if @case.contacted == false
      @case.set_status_to_in_progress if @case.start_date && @case.description && @case.practice_area

      redirect_to case_path(@case)
    else
      render 'edit'
      flash[:alert] = "Votre affaire n'a pu être modifiée."
    end
  end

  private

  def set_case
    @case = Case.find(params[:id])
  end

  def case_params
    params.require(:case).permit(:title, :case_number, :status, :description, :practice_area, :start_date, :fees)
  end

  def business_params
    params.require(:business_infos).permit(:name, :address, :phone)
  end
end
