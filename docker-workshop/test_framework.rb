require 'selenium-webdriver'
class Driver
    attr_accessor :driver
    def initialize
        Selenium::WebDriver::Chrome.driver_path= "/opt/chromedriver-109.0.5414.74/chromedriver"
        options = Selenium::WebDriver::Chrome::Options.new
        options.add_argument('--headless')
        options.add_argument('--window-size =1920,1080')
        options.add_argument('--no-sandbox')
        options.add_argument('--disable-dev-shm-usage')
        options.add_argument('--disable-setuid-sandbox')
        @driver = Selenium::WebDriver.for :chrome, options: options
    end
    def navigate_to_page(url)
        begin
            driver.manage.window.maximize
            driver.get(url)
            return driver.title
          rescue 
            return "page not found"
        end
    end

    def select_element(locator)
        begin
            key , value = locator.first
            return driver.find_element(key => value)
        rescue
            puts "element not found"
        end
    end

    def click_element(locator)
        begin
            selected=select_element(locator)
            selected.click
            return true
        rescue => exception
            raise exception
        end
    end
    def send_key(locator,text)
        key , value = locator.first
        begin
             selected= select_element(locator)
             return selected.send_keys(text)
        rescue => exception
            raise exception
        end
    end

    def get_Element_Text(locator)
        begin
            selected=select_element(locator)
            return selected.text
        rescue => exception
            raise exception
        end
    end  
    def displayed(locator)
        begin
            selected=select_element(locator)
            return selected.displayed?
        rescue => exception
            raise exception
        end
    end

end

