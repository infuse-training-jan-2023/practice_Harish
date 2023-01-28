require 'selenium-webdriver'
class Exercise3
    attr_accessor :driver, :wait

    def initialize(driver_path)
        Selenium::WebDriver::Chrome.driver_path=driver_path
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
example3_obj=Exercise3.new(driver_path)
example3_obj.open_browser(url)
example3_obj.click_button()
example3_obj.close_browser()
