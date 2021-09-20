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

Then (/^click on aspiration plus product routes to monthly and yearly$/)
if (@current_page.//div[@class='card-plus']]).exists
 @current.//[ng-click='getAspirationPlus()'].click

expect(@current_page.//div[@class='option selected']).to be true
expect(@current_page.//div[@class='option']).to be true
end

And (/^verify Monthly plan and yearly plans have accurate prices$/)
expect(element(by.binding('$71.88')).getText()).toBe(71.88);
expect(element(by.binding('$7.99')).getText()).toBe(7.99);




