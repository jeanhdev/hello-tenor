class DashboardController < ApplicationController
  skip_after_action :verify_authorized, only: [:summary, :clients]

  def summary
    if current_user.lawyer
      @lawyer = current_user.lawyer
      @cases = @lawyer.cases
      @clients = @lawyer.users.uniq
    else
      @user = current_user
      @cases = @user.cases
    end

    # @notifications = @cases.map do |c|
    #   next if c.notifications.empty?
    #   c.notifications
    # end.flatten.compact.sort_by { |n| n.read ? 0 : 1 }

    @notifications = Notification.where(case_id: @cases.pluck(:id)).order(created_at: :desc)
  end

  def clients
    @lawyer = current_user.lawyer
    @cases = @lawyer.cases
    # @clients = @lawyer.users.uniq
    if params[:query].present?
      @clients = @lawyer.users.global_search(params[:query]).uniq
    else




      @clients = @lawyer.users.uniq
    end
    # if params["search"]
    #   @filter = params["search"]["user"].flatten.reject(&:blank?)
    #   @specific_clients = @clients.global_search("#{@filter}")
    # else
    #   @specific_clients =  @clients
    # end
    #   respond_to do |format|
    #     format.html
    #     format.js
    #   end
    end
end
