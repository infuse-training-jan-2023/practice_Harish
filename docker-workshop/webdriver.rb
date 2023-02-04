class Webdriver
    def initialize
        # Selenium::WebDriver::Chrome.driver_path= "C:\\Users\\haris\\OneDrive\\Documents\\Selenium\\chromedriver_win32\\chromedriver.exe"
        # @driver=Selenium::WebDriver.for :chrome
        Selenium::WebDriver::Chrome.driver_path= "/opt/chromedriver-109.0.5414.74/chromedriver"
        options = Selenium::WebDriver::Chrome::Options.new
        options.add_argument('--headless')
        options.add_argument('--window-size=1920,1080')
        options.add_argument('--no-sandbox')
        options.add_argument('--disable-dev-shm-usage')
        @driver = Selenium::WebDriver.for :chrome, options: options
    end
end    