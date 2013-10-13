require "twilio-ruby"

class TextoutController < ApplicationController
 
  client = Twilio::REST::Client.new(TWILIO_CONFIG['sid'], TWILIO_CONFIG['token'])
 
  # Outgoing Caller ID you have previously validated with Twilio
 
  def index
  end

  def sendtext
    client = Twilio::REST::Client.new(TWILIO_CONFIG['sid'], TWILIO_CONFIG['token'])
    # Instantiate a Twilio client
      
      # Create and send an SMS message
      friends = {
        "+19493228496" => "Lenny",
        "+15628823520" => "Matt",
        "+19185763165" => "Jennings",
        "+18482195617" => "Melody",
        "+16465484196" => "Mik"
      }
      friends.each do |key, value|
        client.account.sms.messages.create(
          :from => TWILIO_CONFIG['from'],
          :to => key,
          :body => "Hey #{value}, Monkey party at 6PM. Bring Bananas!"
        ) 
        puts "Sent message to #{value}"
      end
  end
 
  # Use the Twilio REST API to initiate an outgoing call
  def makecall
 
    client = Twilio::REST::Client.new(TWILIO_CONFIG['sid'], TWILIO_CONFIG['token'])
    @call = client.account.calls.create(
      :from => TWILIO_CONFIG['from'],   # From your Twilio number
      :to => '+19493228496',     # To any number
      # Fetch instructions from this URL when the call connects
      :url => 'http://snipit.herokuapp.com/voicein'
    )
  end

  def textin

  end

  def voicein
  end

end
