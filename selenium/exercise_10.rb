require 'selenium-webdriver'
class GetTableColumn
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
    def select_table_column(ith)
        table_data = driver.find_elements(:css, "tbody tr td:nth-child(#{ith})")
        table_data.each { |table_data| print(table_data.text+"\n")}
    end

    def close_browser()
        driver.close()
    end
end

driver_path="C:\\Users\\haris\\OneDrive\\Documents\\Selenium\\chromedriver_win32\\chromedriver.exe"
url="https://computer-database.gatling.io/computers"
ex10=GetTableColumn.new(driver_path)
ex10.open_browser(url)
ex10.select_table_column(2)
ex10.close_browser()
