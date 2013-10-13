require "twilio-ruby"

class TextoutController < ApplicationController
 
  client = Twilio::REST::Client.new(TWILIO_CONFIG['sid'], TWILIO_CONFIG['token'])
  


  # Outgoing Caller ID you have previously validated with Twilio
 
  def index
    client = Twilio::REST::Client.new(TWILIO_CONFIG['sid'], TWILIO_CONFIG['token'])
    @users       = User.all
    @recreations = Recreation.all
    @recipes     = Recipe.all
    @coupons     = Coupon.all
    @users.each do |n|
      puts n.firstname
      @signedUp = ""
      if(n.groupCoupon === "1")
        @signedUp += " #COUPON"
      end
      if(n.groupRecreation === "1")
        @signedUp += " #FITNESS"
      end
      if(n.groupRecipe == "1")
        @signedUp += " #RECIPE"
      end
      @textMessage = n.firstname + "! Welcome to Snipit. Your coach signed you up for daily messages for" + @signedUp +  ". Reply STOP to halt messages."
      client.account.sms.messages.create(
        :from => TWILIO_CONFIG['from'],
        :to => n.phoneNumber,
        :body => @textMessage
      ) 
      puts "Sent message to " + n.firstname
    end
  end

  def lennytest
    client = Twilio::REST::Client.new(TWILIO_CONFIG['sid'], TWILIO_CONFIG['token'])
    @users       = User.where("id = 1", params[:id] )    
    @recreations = Recreation.all
    @recipes     = Recipe.all
    @coupons     = Coupon.all
    @users.each do |n|
      puts n.firstname
      @signedUp = ""
      if(n.groupCoupon === "1")
        @signedUp += " #COUPON"
      end
      if(n.groupRecreation === "1")
        @signedUp += " #FITNESS"
      end
      if(n.groupRecipe == "1")
        @signedUp += " #RECIPE"
      end
      @textMessage = n.firstname + "! Welcome to Snipit. Your coach signed you up for daily messages for" + @signedUp +  ". Reply STOP to halt messages."
      client.account.sms.messages.create(
        :from => TWILIO_CONFIG['from'],
        :to => n.phoneNumber,
        :body => @textMessage
      ) 
      puts "Sent message to " + n.firstname
    end
  end

  def sendtext
    client = Twilio::REST::Client.new(TWILIO_CONFIG['sid'], TWILIO_CONFIG['token'])
    # Instantiate a Twilio client
      
      # Create and send an SMS message
      friends = {
        "+19493228496" => 'Lenny',
        "+15628823520" => "Matt",
        "+19185763165" => "Jennings",
        "+18482195617" => "Melody",
        "+16465484196" => "Mik"

        # ,"+19174007014" => "Yvonne",
        # "+19175860229" => "Donya",
        # "+19175498582" => "Matylda",
        # "+12017075074" => "Juan",
        # "+16174709478" => "Jerri",
        # "+12019825122" => "Ryan",
        # "+16105858076" => "Matt"
      }
      friends.each do |key, value|
        client.account.sms.messages.create(
          :from => TWILIO_CONFIG['from'],
          :to => key,
          :body => "#{value}! Welcome to Snipit. Your coach signed you up for daily messages for new #RECIPES! Reply STOP to halt messages."
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
