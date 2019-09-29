# Preview all emails at http://localhost:3000/rails/mailers/case_mailer
class CaseMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/case_mailer/create_confirmation
  def create_confirmation
    CaseMailer.create_confirmation
  end

end
