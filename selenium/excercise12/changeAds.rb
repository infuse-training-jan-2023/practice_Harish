require 'selenium-webdriver'
class AmazonAutomation
    attr_accessor :driver, :wait

    def initialize(driver_path)
        Selenium::WebDriver::Chrome.driver_path=driver_path
        @wait = Selenium::WebDriver::Wait.new(:timeout => 10)
        @driver=Selenium::WebDriver.for :chrome
        driver.manage.timeouts.implicit_wait =10
    end
    def open_browser(url)
        driver.get(url)
        driver.manage.window.maximize
    end
    
    def change_Ads_carousel()
        driver.find_element(:css, "a.a-carousel-goto-nextpage").click
        sleep(5)
        driver.find_element(:css, "i.a-icon.a-icon-previous-rounded").click
        sleep(5)
    end 
    

    def close_browser()
        driver.close()
    end
end

driver_path="C:\\Users\\haris\\OneDrive\\Documents\\Selenium\\chromedriver_win32\\chromedriver.exe"
url="https://www.amazon.in/"
name="dummy_name"
user="9834897920"
password="1234567"
email="dummy@example.com"
ex12=AmazonAutomation.new(driver_path)
ex12.open_browser(url)
ex12.change_Ads_carousel()

ex12.close_browser()
