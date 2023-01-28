require 'selenium-webdriver'
class Exercise11
    attr_accessor :driver, :wait

    def initialize(driver_path)
        Selenium::WebDriver::Chrome.driver_path=driver_path
        @driver=Selenium::WebDriver.for :chrome
    end
    def open_browser(url)
        driver.get(url)
    end
    def select_table_column(row, column)
        begin
            table= driver.find_element(id:  "table1")
            table_row = table.find_elements(:tag_name ,"tr")
            table_cell=table_row[row-1].find_elements(:tag_name,"td")
            puts table_cell[column-1].text
        rescue => exception
            puts exception.message
        end
        
    end
    def close_browser()
        driver.close()
    end
end

driver_path="C:\\Users\\haris\\OneDrive\\Documents\\Selenium\\chromedriver_win32\\chromedriver.exe"
url="https://the-internet.herokuapp.com/tables"
exercise11_obj=Exercise11.new(driver_path)
exercise11_obj.open_browser(url)
exercise11_obj.select_table_column(2,2)
exercise11_obj.close_browser()
