# RECUPERER TOUS LES LIENS DE LA PAGE
# ET LES STOCKER DANS UN HASH

require 'open-uri'
require 'nokogiri'
require 'gmail'
require 'mail'


def get_all_the_urls_of_val_doise_townhalls
pages = Nokogiri::HTML(open("http://annuaire-des-mairies.com/val-d-oise.html"))
links = pages.css(".lientxt")
hash = Hash.new
emails = []

#premiere boucle qui sors les url de chaque ville
    links.each do |ville|
        url = "http://annuaire-des-mairies.com" + ville['href']
#deuxieme boucle qui sors les mails de chaque page
        ville.each do |mail|
            page = Nokogiri::HTML(open(url))
            emails << page.xpath('//td[contains(text(), "@")]').text
        end
    end
emails = emails.uniq
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


send_mail(get_all_the_urls_of_val_doise_townhalls)`