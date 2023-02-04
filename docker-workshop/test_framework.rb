require 'selenium-webdriver'
class Framework
    attr_accessor :driver
    def initialize(driver)
        @driver = driver
    end
    def navigate_to_page(url)
        begin
            
            driver.get(url)
            return driver.title
        rescue => exception
            puts exception.message
        end
    end

    def find_element(locator)
        begin
            key , value = locator.first
            return driver.find_element(key => value)
        rescue => exception
            puts exception.message
        end
    end

    def click_element(locator)
        begin
            selected=find_element(locator)
            selected.click
            return true
        rescue => exception
            puts exception.message
        end
    end
    def send_key(locator,text)
        key , value = locator.first
        begin
            selected= find_element(locator)
            return selected.send_keys(text)
        rescue => exception
            puts exception.message
        end
    end

    def get_text(locator)
        begin
            selected=find_element(locator)
            return selected.text
        rescue => exception
            puts exception.message
        end
    end  
    def displayed(locator)
        begin
            selected=find_element(locator)
            return selected.displayed?
        rescue => exception
            puts exception.message
        end
    end
    def screenshot()
        begin
            puts   driver.save_screenshot('screenshot.png')
        rescue => exception
            puts exception.message
        end
    end

end
