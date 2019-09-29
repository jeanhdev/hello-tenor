class CaseMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.case_mailer.create_confirmation.subject
  #
  def create_confirmation
    @case = params[:case]

    mail(
      to:       @case.user.email,
      subject:  "Hellotenor x #{@case.lawyer.user.last_name}!"
    )
  end
end
