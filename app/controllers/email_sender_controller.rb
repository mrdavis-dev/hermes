require 'resend'

class EmailSenderController < ApplicationController
    def send_email
        Resend.api_key = "re_JDKyM7Ci_G8YuX9fBfhJvnDxhfdGUdPZY"
    
        email_params = {
          "from": params[:from],
          "to": [params[:to]],
          "subject": params[:subject],
          "html": params[:bodyhtml],
          "business_name": params[:business_name]
        }
    
        sent = Resend::Emails.send(email_params)
    
        if sent
          save_sent_email(email_params, 'enviado')
          render json: { sent: true, message: 'Email sent and saved successfully' }
        else
          save_sent_email(email_params, 'no enviado')  
          render json: { sent: false, message: 'Failed to send email' }
        end
      end
    
      private
    
      def save_sent_email(params, enviado)
        SentEmail.create(
          from: params[:from],
          to: params[:to].join(', '),
          subject: params[:subject],
          bodyhtml: params[:html],
          sent_at: Time.now,
          business_name: params[:business_name],
          enviado: enviado
        )
      end
end
