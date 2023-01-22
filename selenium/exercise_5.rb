require 'selenium-webdriver'
class ClickElelemt
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
        driver.find_element(:name ,"q").send_keys 'selenium-webdrivers'
        driver.find_element(:css,"div[class='FPdoLc lJ9FBc'] input[value='Google Search']").click
    end

    def close_browser()
        driver.close()
    end
end

driver_path="C:\\Users\\haris\\OneDrive\\Documents\\Selenium\\chromedriver_win32\\chromedriver.exe"
url = "https://www.google.com/"
ex5=ClickElelemt.new(driver_path)
ex5.open_browser(url)
ex5.search_information()
ex5.close_browser()
