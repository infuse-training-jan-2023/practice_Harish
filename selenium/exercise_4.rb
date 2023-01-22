require 'selenium-webdriver'
class ClickElelemt
    attr_accessor :driver, :wait

    def initialize(driver_path)
        Selenium::WebDriver::Chrome.driver_path=driver_path
        @driver=Selenium::WebDriver.for :chrome        
    end
    def open_browser(url)
        driver.get(url)
    end
    def click_check_box
       driver.find_element(:id ,"checkbox2").click
    end
    def click_radio_button
           driver.find_element(:css,"label > input.ng-pristine.ng-untouched.ng-invalid.ng-invalid-required
                ").click
    end
    def close_browser()
        driver.close()
    end
end

driver_path="C:\\Users\\haris\\OneDrive\\Documents\\Selenium\\chromedriver_win32\\chromedriver.exe"
url = "https://demo.automationtesting.in/Register.html"
ex4=ClickElelemt.new(driver_path)
ex4.open_browser(url)
ex4.click_radio_button()
ex4.click_check_box()
ex4.close_browser()
