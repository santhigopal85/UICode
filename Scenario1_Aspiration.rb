require 'selenium-webdriver'
require 'watir'
require 'page-object'

Given (/^i am on Aspiration Page$/)
browser b = Watir::Browser.new chrome
b.goto("https://aspiration.com/")

And(/^click on Spend and Save$/)
spendandsave = b.//li[@class='Flex-sc-1kj10zc-0 dPEQCs'][1]
spendandsave.click

And(/^aspiration and aspiration plus products displayed$/)
expect(@current_page.//div[@class='card-original']).to be true
expect(@current_page.//div[@class='card-plus']).to be true

Then (/^click on aspiration product routes to signup page to enter email address$/)
if (@current_page.//div[@class='card-original']).exists
 @current_page.//button[.='Get Aspiration'].click

expect(@current.//input[@id='join-waitlist-input'].to be true
end








