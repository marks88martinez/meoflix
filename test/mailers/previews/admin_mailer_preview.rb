# Preview all emails at http://localhost:3000/rails/mailers/admin_mailer
class AdminMailerPreview < ActionMailer::Preview
  def send_message
    AdminMailer.send_message(Admin.first.email, Admin.last, "subject-text")
  end

end
