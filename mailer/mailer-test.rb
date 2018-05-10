require 'open-uri'
require 'nokogiri'
require 'gmail'
require 'mail'


def get_all_the_urls_of_val_doise_townhalls
a = { "manu" => "manujouve@gmail.com", "ekkhi" => "martin.berangere@live.fr" }
end

def gethtml
  message = File.read('mail.html')
  return message
end


def send_mail(get_all_the_urls_of_val_doise_townhalls)
 get_all_the_urls_of_val_doise_townhalls.each do |info, mail|
     content = gethtml
     gmail = Gmail.connect("thpeastcoast@gmail.com", "raouf13thp") do |gmail|    
       email = gmail.deliver do
         to mail
         subject "TEST"
         html_part do
            content_type 'text/html; charset=UTF-8'
            body content
          end
       end
   end
 end
end


send_mail(get_all_the_urls_of_val_doise_townhalls)