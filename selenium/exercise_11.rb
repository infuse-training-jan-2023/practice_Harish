require 'selenium-webdriver'
class ClickElelemt
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
    def select_table_column(row, column)
        table= driver.find_element(id:  "table1")
        table_data = table.find_elements(:css, "tbody tr:nth-child(#{row}) td:nth-child(#{column})")
        table_data.each { |table_data| print(table_data.text+"\n")}
    end

    def close_browser()
        driver.close()
    end
end

driver_path="C:\\Users\\haris\\OneDrive\\Documents\\Selenium\\chromedriver_win32\\chromedriver.exe"
url="https://the-internet.herokuapp.com/tables"
ex11=ClickElelemt.new(driver_path)
ex11.open_browser(url)
ex11.select_table_column(2,2)
ex11.close_browser()
