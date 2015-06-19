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
browser.button(:type => "submit").click 



browser.a(:text => "delete").when_present.click

