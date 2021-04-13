require 'twilio-ruby'
 
account_sid = ENV['TWILIO_ACCOUNT_SID']
auth_token = ENV['TWILIO_AUTH_TOKEN']
client = Twilio::REST::Client.new(account_sid, auth_token)
 
message = client.messages.create(from: 'whatsapp:+14155238886',
                                 to: 'whatsapp:+<your whatsapp phone number>',
                                 body: 'Ahoy WhatsApp user!'
                                )
