require 'selenium-webdriver'
class Exercise7
    attr_accessor :driver, :wait

    def initialize(driver_path)
        Selenium::WebDriver::Chrome.driver_path=driver_path
        @driver=Selenium::WebDriver.for :chrome
    end
    def open_browser(url)
        driver.get(url)
    end
    def select_dropdown_option(ith)
        begin
            drop = driver.find_element(:name, "dropdown")
            options = Selenium::WebDriver::Support::Select.new(drop).options
            options[ith-1].click
        rescue => exception
            puts exception.message
        end

    end

    def close_browser()
        driver.close()
    end
end

driver_path="C:\\Users\\haris\\OneDrive\\Documents\\Selenium\\chromedriver_win32\\chromedriver.exe"
url="https://testpages.herokuapp.com/styled/basic-html-form-test.html"
dropdown_option='Drop Down Item 6'
exercise7_obj=Exercise7.new(driver_path)
exercise7_obj.open_browser(url)
exercise7_obj.select_dropdown_option(2)
exercise7_obj.close_browser()
