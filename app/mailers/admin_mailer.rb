class AdminMailer < ApplicationMailer
  def send_message(name, asunto, to, message)

    @name = name
    @asunto = asunto
    @to = to
    @message = message
    mail(to:@to, subject: @asunto)
    #code
  end
end
