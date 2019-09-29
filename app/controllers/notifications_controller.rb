class NotificationsController < ApplicationController
    before_action :set_case

    def new
        @notification = Notification.new
        @notification.case = @case
        authorize @notification
    end
    
    def create
        # creation de la notification
        @notification = Notification.new
        @notification.case = @case
        authorize @notification

        # case.user est le receiver
        @notification.receiver = @case.user

        # content reçu dans les params
        @notification.content = "Demande de #{params[:category]} : #{params[:document]}"

        @notification.save
        flash[:notice] = "Demande envoyée."
        redirect_to case_path(@case)
    end

    private

    def set_case
        @case = Case.find(params[:case_id])
    end
end
