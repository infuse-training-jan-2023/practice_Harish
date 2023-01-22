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
    def search_informatio
        dropdown_list = wait.until{driver.find_element(:css ,"body > app-root:nth-child(1) > app-forms:nth-child(3) > section:nth-child(2) > div:nth-child(1) > div:nth-child(1) > div:nth-child(1) > div:nth-child(1) > div:nth-child(1) > form:nth-child(1) > div:nth-child(2) > div:nth-child(2) > div:nth-child(1) > div:nth-child(2) > div:nth-child(1) > select:nth-child(1)")}
        options = wait.until {dropdown_list.find_elements(tag_name: 'option')}
        options.each { |option| print(option.text)}
    end

    def close_browser()
        driver.close()
    end
end

driver_path="C:\\Users\\haris\\OneDrive\\Documents\\Selenium\\chromedriver_win32\\chromedriver.exe"
url = "https://letcode.in/forms"
ex3=ClickElelemt.new(driver_path)
ex3.open_browser(url)
ex3.search_informatio()
ex3.close_browser()
