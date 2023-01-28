require 'selenium-webdriver'
class Exercise4
    attr_accessor :driver, :wait

    def initialize(driver_path)
        Selenium::WebDriver::Chrome.driver_path=driver_path
        @driver=Selenium::WebDriver.for :chrome        
    end
    def open_browser(url)
        driver.get(url)
    end
    def click_check_box
        begin
        driver.find_element(:id ,"checkbox2").click
        rescue => exception
            puts exception.message
        end
    
    end
    def click_radio_button
        begin
           radio_option=driver.find_elements(:name,"radiooptions")
           radio_option[0].click
        rescue => exception
            puts exception.message
        end


    end
    def close_browser()
        driver.close()
    end
end

driver_path="C:\\Users\\haris\\OneDrive\\Documents\\Selenium\\chromedriver_win32\\chromedriver.exe"
url = "https://demo.automationtesting.in/Register.html"
example4_obj=Exercise4.new(driver_path)
example4_obj.open_browser(url)
example4_obj.click_radio_button()
example4_obj.click_check_box()
example4_obj.close_browser()
