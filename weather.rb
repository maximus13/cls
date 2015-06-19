require 'rubygems'
require 'mechanize' 
require 'watir' 


username = "tlembi@up-sf.com"
password = "urban123"
imagepath = "/Users/taylor/image.png"

browser = Watir::Browser.new :firefox
browser.goto  "https://accounts.craigslist.org/login?rt=L&amp;rp=%2Flogin%2Fhome" 

browser.text_field(:id => 'inputEmailHandle').set 'tlembi@up-sf.com'
browser.text_field(:id => 'inputPassword').set 'urban123'
browser.button(:type,"submit").click 

browser.select_list(:name => 'areaabb').select 'sf bay area, ca, us' 
browser.button(:value,"go").click 

#type of posting
browser.radio(:value => 'ho').click


#category
browser.radio(:value => '1').click


#city
browser.radio(:value => '1').click

#location
browser.radio(:value => '149').click

#posting title
browser.text_field(:id => 'PostingTitle').set 'Studio Apartment, Renovated'


#postal code
browser.text_field(:id => 'postal_code').set '94109'

#posting body
browser.text_field(:id => 'PostingBody').set 'Stylishly luxurious and furnished SRO units. Each unit is brilliantly furnished and offers a full size bed, desk, kitchenette (PLEASE NOTE: There are no cook tops), linens, and wall mounted flat screen TV. These units are tasteful and comfortable!

Vitual Tour: http://toursler.com/1485_bush

Features: 
Natural light
Beautiful flooring
Study/Office area 
Stone countertops
Stainless steel appliances
Elevator'

#sq ft
browser.text_field(:id => 'Sqft').set '250'

#rent
browser.text_field(:name => 'Ask').set '2500'

#available on --- ****must connect to correct date
browser.select_list(:name => 'moveinMonth').select_value '2'
browser.text_field(:name => 'moveinDay').set '10'

#bedrooms
browser.select_list(:id => 'Bedrooms').select_value '0'

#bathrooms
browser.select_list(:id => 'bathrooms').select_value '3'

browser.select_list(:id => 'housing_type').select_value '1'

browser.select_list(:id => 'laundry').select_value '3'

browser.select_list(:id => 'parking').select_value '7'

browser.text_field(:id => 'xstreet0').set '1485 Bush Street'

browser.text_field(:id => 'xstreet1').set 'Van Ness Avenue'

browser.text_field(:id => 'city').set 'San Francisco'

browser.text_field(:id => 'region').set 'CA'

browser.checkbox(:id => 'copy_assign').click

browser.button(:value,"Continue").click

#map
browser.button(:class,'continue bigbutton').click 

#images
sleep(2)

browser.a(text: "Use classic image uploader").click

browser.file_field.set '/Users/taylorlembi/Desktop/bush1485.png'
browser.file_field.set '/Users/taylorlembi/Desktop/bush1485_hall.png'
browser.file_field.set '/Users/taylorlembi/Desktop/bush1485_room.png'

browser.button(:value => "Done with Images").click 

browser.button(:value => "Continue").click 

###



username = "tlembi@up-sf.com"
password = "urban123"
imagepath = "/Users/taylor/image.png"

browser = Watir::Browser.new :firefox
browser.goto  "https://postlets.com/" 



#LogIn
browser.link(:text => "Log In").click 
browser.text_field(:name => 'fields[username]').set 'tlembi@up-sf.com'
browser.text_field(:name => 'fields[password]').set 'urban123'
browser.button(:type => "submit").click 

#click create new listing button
browser.link(:text =>"New Postlet").when_present.click

#LOCATION
#bypass address lookup
browser.text_field(:id => 'address').set '1'
browser.link(:text => "create your own address").when_present.click
browser.text_field(:id => 'manual_street').set '1485 Bush Street'
browser.text_field(:id => 'manual_city').set 'San Francisco'
browser.select_list(:id => 'manual_state').select_value "CA"
browser.text_field(:id => 'manual_zip').set '94109'
browser.label(:text => "For Rent").click
browser.button(:id => "submission_button").click 

# sleep(5)

#CONTACT INFO
browser.label(:for => /Management\sCompany.*/).when_present.click
browser.text_field(:name => 'fields[name]').set 'Taylor'
browser.text_field(:name => 'fields[email]').set 'tlembi@up-sf.com'
browser.text_field(:name => 'fields[phone]').set '415.531.7715'

browser.button(:class => "button_main", type: "submit").click 



#BASIC DETAILS
browser.text_field(:id => 'price').set '1800'
browser.text_field(:id => 'deposit').set '2100'
#lease duration
browser.select_list(:id => 'lease_duration').select_value '1y'

#date available
#additional lease terms
browser.text_field(:id => 'terms').set 'No Utilities Included'


#property type
browser.select_list(:id => 'property_type').select_value '1'

#bedroom
browser.select_list(:id => 'beds').select_value '0'

#bathroom
browser.select_list(:id => 'baths').select_value '1'

#square feet
browser.text_field(:id => 'sqft').set '2100'

#unit
#year built
#parking spaces
browser.select_list(:id => 'parking_spaces').select_value ""



#pet policy****required****
browser.checkbox(:id => 'pets_cats').click




#laundry

#Submit Button
browser.button(:type => "submit").click 






#PHOTOS AND MEDIA
browser.file_field.set '/Users/taylorlembi/Desktop/bush1485.png'
browser.file_field.set '/Users/taylorlembi/Desktop/bush1485_hall.png'
browser.file_field.set '/Users/taylorlembi/Desktop/bush1485_room.png'


#Submit Button
browser.button(:type => "submit").click 


#DESCRIPTION

#Property Title
browser.text_field(:id => 'property_title').set 'Studio Apartment, Renovated'



#Property Description
browser.text_field(:id => 'property_description').set 'Stylishly luxurious and furnished SRO units. Each unit is brilliantly furnished and offers a full size bed, desk, kitchenette (PLEASE NOTE: There are no cook tops), linens, and wall mounted flat screen TV. These units are tasteful and comfortable!


Features: 
Natural light
Beautiful flooring
Study/Office area 
Stone countertops
Stainless steel appliances
Elevator'



#Submit Button
browser.button(:type => "submit").click 

#REVIEW POSTLET
#Activate Button
browser.button(:class,'button_main').click 


#browser.close

#PROMOTE


