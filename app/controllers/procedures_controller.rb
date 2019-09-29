class ProceduresController < ApplicationController
    before_action :current_procedure, only: [:show, :edit, :update]
    def index
        @case = Case.find(params[:case_id])
        @procedures = policy_scope(Procedure)
        @procedures = @case.procedures
    end

    def show
    end

    def new
        @case = Case.find(params[:case_id])
        @procedure = Procedure.new
    end

    def create
        @case = Case.find(params[:case_id])
        @procedure = Procedure.new(procedure_params)
        @procedure.case = @case
        @procedure.user = current_user
        if @procedure.save
        # redirect_to service_path(@service), notice: 'Votre prestation a bien été créé.'
            redirect_to case_procedures(@case), notice: 'Votre procédure a bien été enregistrée.'
        else
            render 'new'
        end
    end

    def edit
    end

    def update
      if @current_procedure.update(procedure_params)
        redirect_to case_procedures(@case), notice: 'La procédure a bien été mise à jour.'
      else
        render 'edit'
      end
    end

    # def accept
    #     @procedure = Procedure.find(params[:id])
    #     @procedure.status = "accepted"
    #     @procedure.save
    #     redirect_to profile_path, notice: "Vous venez d'accepter une procédure."
    # end

    # def refuse
    #     @procedure = Procedure.find(params[:id])
    #     @procedure.status = "refused"
    #     @procedure.save
    #     redirect_to profile_path, notice: "Vous venez de refuser une procédure."
    # end

#   def payment
#   end

  private

  def current_procedure
    @procedure = Procedure.find(params[:id])
  end

  def procedure_params
    params.require(:procedure).permit(:name, :grievance, :legal_action, :step, :deadline, :start_date, :end_date, :status, :number_of_documents, :cost)
  end
end
