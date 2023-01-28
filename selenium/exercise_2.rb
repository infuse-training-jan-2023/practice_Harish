require 'selenium-webdriver'
class PageTitle
    attr_accessor :driver, :wait

    def initialize(driver_path)
        Selenium::WebDriver::Chrome.driver_path=driver_path
        @wait = Selenium::WebDriver::Wait.new(:timeout => 5)
        @driver=Selenium::WebDriver.for :chrome
    end
    def open_browser(url)
        driver.get(url)
    end
    def get_page_title
       page_title =wait.until {driver.title}
        print(page_title)
    end
    def close_browser()
        driver.close()
    end
end

driver_path = "C:\\Users\\haris\\OneDrive\\Documents\\Selenium\\chromedriver_win32\\chromedriver.exe"
url = "https://www.selenium.dev/"
example2_obj=PageTitle.new(driver_path)
example2_obj.open_browser(url)
example2_obj.get_page_title()
example2_obj.close_browser()
