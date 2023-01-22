require 'selenium-webdriver'
class MoveSlider
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
    def drag_slider()
        frame=driver.switch_to.frame driver.find_element(:css, "div[rel-title='Steps'] p iframe") 
        slider=driver.find_element(:css, "span[tabindex='0']")
        driver.action.drag_and_drop_by(slider, 100, 100).perform
    end

    def close_browser()
        driver.close()
    end
end

driver_path="C:\\Users\\haris\\OneDrive\\Documents\\Selenium\\chromedriver_win32\\chromedriver.exe"
url="https://www.globalsqa.com/demo-site/sliders/#Steps"
ex8=MoveSlider.new(driver_path)
ex8.open_browser(url)
ex8.drag_slider()
ex8.close_browser()
