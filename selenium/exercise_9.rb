require 'selenium-webdriver'
class Exercise9
    attr_accessor :driver, :wait

    def initialize(driver_path)
        Selenium::WebDriver::Chrome.driver_path=driver_path
        @driver=Selenium::WebDriver.for :chrome
    end
    def open_browser()
        driver.get("https://cosmocode.io/automation-practice-webtable/")
    end
    def get_table_header
        tablehead= driver.find_elements(:tag_name,'tr')
        puts tablehead[0].text
    end

    def close_browser()
        driver.close()
    end
end

driver_path="C:\\Users\\haris\\OneDrive\\Documents\\Selenium\\chromedriver_win32\\chromedriver.exe"
exercise9_obj=Exercise9.new(driver_path)
exercise9_obj.open_browser()
exercise9_obj.get_table_header()
exercise9_obj.close_browser()
