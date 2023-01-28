require 'selenium-webdriver'
class Exercise8
    attr_accessor :driver

    def initialize(driver_path)
        Selenium::WebDriver::Chrome.driver_path=driver_path
        @driver=Selenium::WebDriver.for :chrome
    end
    def open_browser(url)
        driver.get(url)
    end
    def drag_slider()
        begin
        iframes=driver.find_elements(:tag_name, "iframe")        
        driver.switch_to.frame iframes[5]
        slider=driver.find_element(:id, "slider")
        slider.click
        driver.action.send_keys(:arrow_right).perform
        rescue => e
            puts e.message
        end
    end

    def close_browser()
        driver.close()
    end
end

driver_path="C:\\Users\\haris\\OneDrive\\Documents\\Selenium\\chromedriver_win32\\chromedriver.exe"
url="https://www.globalsqa.com/demo-site/sliders/#Steps"
exercise8_obj=Exercise8.new(driver_path)
exercise8_obj.open_browser(url)
exercise8_obj.drag_slider()
exercise8_obj.close_browser()
