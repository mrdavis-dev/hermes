class ShippedsController < ApplicationController
    
    before_action   :emails_for_current_user, only: [:index]
    before_action   :set_emails_to_email, only: [:show]
    before_action   :set_not_send, only: [:show]

    def index
        render json: emails_for_current_user, status: :ok
    end
    
    def show
        render json: set_emails_to_email, status: :ok
    end

    def email_not_send
        render json: set_not_send, status: :ok
    end
    
    private

    def set_business_name
        @current_user.business_name
    end

    def emails_for_current_user
        SentEmail.where(business_name: set_business_name)
    end

    def set_not_send
        SentEmail.where(business_name: set_business_name, enviados: "no enviados")
    end

    def set_emails_to_email
        SentEmail.where(business_name: set_business_name, to: params["email"])
    end

end
