# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  
  def flash_message
    messages = ""
    [:notice, :info, :warning, :error].each {|type|
      if flash[type]
        messages += "<p class=\"#{type}\">#{flash[type]}</p>"
      end
    }
    
    messages
  end 
  
end
