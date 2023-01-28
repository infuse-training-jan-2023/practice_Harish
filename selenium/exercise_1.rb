require 'selenium-webdriver'
class Maximize_browser
    attr_accessor :driver, :wait

    def initialize(driver_path)
        Selenium::WebDriver::Chrome.driver_path=driver_path
        @driver=Selenium::WebDriver.for :chrome
    end
    def maximize_browser(url)
        driver.get(url)
        driver.manage.window.maximize
    end
    def close_browser()
        driver.close()
    end
end

driver_path="C:\\Users\\haris\\OneDrive\\Documents\\Selenium\\chromedriver_win32\\chromedriver.exe"
url = "https://www.flipkart.com/"
ex1=Maximize_browser.new(driver_path)
ex1.maximize_browser(url)
ex1.close_browser()
