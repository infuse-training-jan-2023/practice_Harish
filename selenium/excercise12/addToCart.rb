require 'selenium-webdriver'
class AmazonAutomation
    attr_accessor :driver, :wait

    def initialize(driver_path)
        Selenium::WebDriver::Chrome.driver_path=driver_path
        @wait = Selenium::WebDriver::Wait.new(:timeout => 10)
        @driver=Selenium::WebDriver.for :chrome
        driver.manage.timeouts.implicit_wait =10
    end
    def open_browser(url)
        driver.get(url)
        driver.manage.window.maximize
    end

    def addToCart(product)
        serachbar= driver.find_element(id:  "twotabsearchtextbox").click
        driver.find_element(id:  "twotabsearchtextbox").send_keys product
        driver.find_element(:css , "input[value='Go']").click
        driver.find_element(xpath: 'id("search")/div[1]/div[1]/div/span[1]/div[1]/div[3]/div/div/div/div/div/div/div/div[1]/div/div[2]/div/span/a/div').click
        driver.find_element(id: 'add-to-cart-button').click    
    end

    def close_browser()
        driver.close()
    end
end

driver_path="C:\\Users\\haris\\OneDrive\\Documents\\Selenium\\chromedriver_win32\\chromedriver.exe"
url="https://www.amazon.in/"
name="dummy_name"
user="9834897920"
password="1234567"
email="dummy@example.com"
ex12=AmazonAutomation.new(driver_path)
ex12.open_browser(url)
ex12.addToCart("iphone")
ex12.close_browser()
