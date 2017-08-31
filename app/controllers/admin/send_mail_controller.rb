class Admin::SendMailController < ApplicationController
  def create
      begin
        AdminMailer.send_message(params[:'name-text'], params[:'asunto-text'],
        params[:'to-text'], params[:'message-text']).deliver_now

        @notify_message = "Email enviado con succeso"
        @notify_flag = "success"
      rescue
        @notify_message = "Error ao enviar o Email. intente otra vez.."
        @notify_flag = "error"
      end
      respond_to do |format|
        format.js
      end

    end
end
