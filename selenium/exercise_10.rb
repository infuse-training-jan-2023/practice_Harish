require 'selenium-webdriver'
class Exercise10
    attr_accessor :driver

    def initialize(driver_path)
        Selenium::WebDriver::Chrome.driver_path=driver_path
        @driver=Selenium::WebDriver.for :chrome
    end
    def open_browser(url)
        driver.get(url)
    end
    def select_table_column(ith)
        begin
        table= driver.find_element(:tag_name , 'tbody')
        table_row = table.find_elements(:tag_name ,"tr")
        for row in table_row
            column=row.find_elements(:tag_name,"td")
            puts column[ith-1].text
        end
        rescue => e
            puts e.message
        end
    end
    def close_browser()
        driver.close()
    end
end

driver_path="C:\\Users\\haris\\OneDrive\\Documents\\Selenium\\chromedriver_win32\\chromedriver.exe"
url="https://computer-database.gatling.io/computers"
exercise10_obj=Exercise10.new(driver_path)
exercise10_obj.open_browser(url)
exercise10_obj.select_table_column(2)
exercise10_obj.close_browser()
