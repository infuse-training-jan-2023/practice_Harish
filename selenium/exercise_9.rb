require 'selenium-webdriver'
class TableHeader
    attr_accessor :driver, :wait

    def initialize(driver_path)
        Selenium::WebDriver::Chrome.driver_path=driver_path
        @wait = Selenium::WebDriver::Wait.new(:timeout => 5)
        @driver=Selenium::WebDriver.for :chrome
        driver.manage.timeouts.implicit_wait =10
    end
    def open_browser()
        driver.get("https://cosmocode.io/automation-practice-webtable/")
    end
    def get_table_header
        table_header=wait.until{driver.find_element(:css ,"div[itemprop='text'] h2").text}
        print(table_header)
        sleep(10)
    end

    def close_browser()
        driver.close()
    end
end

driver_path="C:\\Users\\haris\\OneDrive\\Documents\\Selenium\\chromedriver_win32\\chromedriver.exe"
ex9=TableHeader.new(driver_path)
ex9.open_browser()
ex9.get_table_header()
ex9.close_browser()
