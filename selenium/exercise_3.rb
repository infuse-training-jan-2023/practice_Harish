require 'selenium-webdriver'
class ClickElelemt
    attr_accessor :driver, :wait

    def initialize(driver_path)
        Selenium::WebDriver::Chrome.driver_path=driver_path
        @wait = Selenium::WebDriver::Wait.new(:timeout => 10)
        @driver=Selenium::WebDriver.for :chrome
    end
    def open_browser(url)
        driver.get(url)
    end
    def click_button
        begin
            driver.find_element(:class ,'close').click
            return 1
        rescue 
            print("elements not found")
        end
    end
    def close_browser()
        driver.close()
    end
end

driver_path="C:\\Users\\haris\\OneDrive\\Documents\\Selenium\\chromedriver_win32\\chromedriver.exe"
url = "https://www.selenium.dev/"
ex3=ClickElelemt.new(driver_path)
ex3.open_browser(url)
ex3.click_button()
ex3.close_browser()
