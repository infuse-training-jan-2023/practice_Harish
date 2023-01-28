require 'selenium-webdriver'
class Exercise5
    attr_accessor :driver, :wait

    def initialize(driver_path)
        Selenium::WebDriver::Chrome.driver_path=driver_path
        @wait = Selenium::WebDriver::Wait.new(:timeout => 10)
        @driver=Selenium::WebDriver.for :chrome
        driver.manage.timeouts.implicit_wait =10
    end
    def open_browser(url)
        driver.get(url)
    end
    def search_information
        search_bar=driver.find_element(:class ,"gLFyf")
        search_bar.send_keys 'selenium-webdrivers'
        search_bar.send_keys(:return)
    end

    def close_browser()
        driver.close()
    end
end

driver_path="C:\\Users\\haris\\OneDrive\\Documents\\Selenium\\chromedriver_win32\\chromedriver.exe"
url = "https://www.google.com/"
example5_obj=Exercise5.new(driver_path)
example5_obj.open_browser(url)
example5_obj.search_information()
example5_obj.close_browser()
