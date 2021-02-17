class TwilioClient
  attr_reader :client

  def initialize
    @client = Twilio::REST::Client.new account_sid, auth_token
  end

  def send_text(lead)
    @client.messages.create(
      from: phone_number,
      to: lead.phone_number,
      body: lead.message
    )
  end

  private

    def account_sid
      Rails.application.credentials.twilio[:account_sid]
    end

    def auth_token
      Rails.application.credentials.twilio[:auth_token]
    end

    def phone_number
      Rails.application.credentials.twilio[:phone_number]
    end
  
end