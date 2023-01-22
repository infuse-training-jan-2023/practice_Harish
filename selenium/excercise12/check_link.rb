require 'selenium-webdriver'
class AmazonAutomation
    attr_accessor :driver, :wait

    def initialize(driver_path)
        Selenium::WebDriver::Chrome.driver_path=driver_path
        @wait = Selenium::WebDriver::Wait.new(:timeout => 10)
        @driver=Selenium::WebDriver.for :chrome
    end
    def open_browser(url)
        driver.get(url)
        driver.manage.window.maximize
    end
    def check_mobile_link()
        click_mobile= driver.find_element(link_text:  "Mobiles").click
        smartphon = wait.until{driver.find_element(link_text:  "Smartphones").displayed?}
        print("mobile link works?" + smartphon.to_s)
    end
    def check_Todays_Deal_link()
        click_todays_deal= driver.find_element(link_text:  "Today's Deals").click
        todays_deal = wait.until{driver.find_element(tag_name:  "h1").displayed?}
        print("\n Todays_Deal_link link works?" + todays_deal.to_s)
    end
    def check_amazonTV_link()
        click_amazon_tv= driver.find_element(link_text:  "Amazon miniTV").click
        amazon_tv = wait.until{driver.find_element(css:  "h1[data-testid='appnavbar_menuitem_webseries']").displayed?}
        print("\n amazonTv link works?"+amazon_tv.to_s)
    end
    def close_browser()
        driver.close()
    end
end

driver_path="C:\\Users\\haris\\OneDrive\\Documents\\Selenium\\chromedriver_win32\\chromedriver.exe"
url="https://www.amazon.in/"

ex12=AmazonAutomation.new(driver_path)
ex12.open_browser(url)
ex12.check_mobile_link()
ex12.check_Todays_Deal_link()
ex12.check_amazonTV_link()
ex12.close_browser()
