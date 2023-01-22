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
    def select_dropdown_option(ith)
        dropdown_list = driver.find_element(:css ,"select[name='dropdown']")
        options = dropdown_list.find_elements(tag_name: 'option')
        options[ith-1].click
        options.each { |option| option.click if option.text=='Drop Down Item 6'}
    end

    def close_browser()
        driver.close()
    end
end

driver_path="C:\\Users\\haris\\OneDrive\\Documents\\Selenium\\chromedriver_win32\\chromedriver.exe"
url="https://testpages.herokuapp.com/styled/basic-html-form-test.html"
dropdown_option='Drop Down Item 6'
ex3=ClickElelemt.new(driver_path)
ex3.open_browser(url)
ex3.select_dropdown_option(5)
ex3.close_browser()
