require 'selenium-webdriver'
class Exercise6
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
    def get_dropdown_options
        begin
            drop = driver.find_element(:tag_name, "select")
            options = Selenium::WebDriver::Support::Select.new(drop).options
            options.each { |option| print(option.text)}
        rescue => exception
            puts exception.message
        end
    end

    def close_browser()
        driver.close()
    end
end

driver_path="C:\\Users\\haris\\OneDrive\\Documents\\Selenium\\chromedriver_win32\\chromedriver.exe"
url = "https://letcode.in/forms"
example6_obj=Exercise6.new(driver_path)
example6_obj.open_browser(url)
example6_obj.get_dropdown_options()
example6_obj.close_browser()
