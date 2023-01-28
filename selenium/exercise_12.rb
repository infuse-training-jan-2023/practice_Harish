require 'selenium-webdriver'
class AmazonAutomation
    attr_accessor :driver, :wait ,:url

    def initialize(driver_path)
        Selenium::WebDriver::Chrome.driver_path=driver_path
        @driver=Selenium::WebDriver.for :chrome
        @url = "https://www.amazon.in/"
    end
    def open_browser(url)
        begin
        driver.get(url)
        driver.manage.window.maximize
        rescue => e
            puts e.message
        end
    end
    def change_Ads_carousel()
        begin
            driver.find_element(:css, "a.a-carousel-goto-nextpage").click
            sleep(5)
            driver.find_element(:css, "i.a-icon.a-icon-previous-rounded").click
            sleep(5)
        rescue => exception
            puts exception.message
        end
        
    end 
    def addToCart(product)
        begin
            serachbar= driver.find_element(id:  "twotabsearchtextbox").click
            driver.find_element(id:  "twotabsearchtextbox").send_keys product
            driver.find_element(:css , "input[value='Go']").click
            driver.find_element(xpath: 'id("search")/div[1]/div[1]/div/span[1]/div[1]/div[3]/div/div/div/div/div/div/div/div[1]/div/div[2]/div/span/a/div').click
            driver.find_element(id: 'add-to-cart-button').click
        rescue => exception
            puts exception.message
        end            
    end
    #
    def check_mobile_link()
        begin
            sleep(2)
            click_mobile= driver.find_element(link_text:  "Mobiles").click
            smartphon = wait.until{driver.find_element(link_text:  "Smartphones").displayed?}
            print("mobile link works?" + smartphon.to_s)
        rescue => exception
            puts exception.message
        end
    end
    def check_Todays_Deal_link()
        begin
            click_todays_deal= driver.find_element(link_text:  "Today's Deals").click
            todays_deal = wait.until{driver.find_element(tag_name:  "h1").displayed?}
            print("\n Todays_Deal_link link works?" + todays_deal.to_s)
        rescue => exception
            puts exception.message
        end
        
    end
    def check_amazonTV_link()
        begin
            click_amazon_tv= driver.find_element(link_text:  "Amazon miniTV").click
            amazon_tv = wait.until{driver.find_element(css:  "h1[data-testid='appnavbar_menuitem_webseries']").displayed?}
            print("\n amazonTv link works?"+amazon_tv.to_s)
        rescue => exception
            puts exception.message
        end
        
    end
    #
    
    def signUp(name,phNo,email,password)
        begin
            driver.find_element(id:  "nav-link-accountList").click
            driver.find_element(id: "createAccountSubmit").click
            driver.find_element(id: "ap_customer_name").send_keys name
            driver.find_element(id: "ap_phone_number").send_keys phNo
            driver.find_element(id: "ap_password").send_keys password
            driver.find_element(id: "ap_email").send_keys email
            driver.find_element(id: "continue").click
        rescue => exception
            puts exception.message
        end
        
    end
    #
    def searchProduct(product)
        begin
            serachbar= driver.find_element(id:  "twotabsearchtextbox").click
            table_data = driver.find_element(id:  "twotabsearchtextbox").send_keys product
            driver.find_element(:css , "input[value='Go']").click
            sleep(10)
        rescue => exception
            puts exception.message
        end
    end
    #
    def signIn(user,password)
        begin
            driver.get(url)
            driver.find_element(id:  "nav-link-accountList").click
            driver.find_element(id:  "ap_email").click
            driver.find_element(id: "ap_email").send_keys user
            driver.find_element(:css ,"input.a-button-input").click
            driver.find_element(id: "ap_password").click
            driver.find_element(id: "ap_password").send_keys password
            driver.find_element(id: "signInSubmit").click
            driver.find_element(:css , "i.a-icon.a-icon-logo").click
        rescue => exception
            puts exception.message
        end
        
    end
    #
    def close_browser()
        driver.close()
    end
end

driver_path="C:\\Users\\haris\\OneDrive\\Documents\\Selenium\\chromedriver_win32\\chromedriver.exe"
url="https://www.amazon.in/"
name="dummy_name"
user="9834897929"
phNo="1234567890"
password="dummy_password"
email="dummy@example.com"
amazon_obj=AmazonAutomation.new(driver_path)
amazon_obj.open_browser(url)
amazon_obj.searchProduct("noise smart watch")
amazon_obj.signUp(name,phNo,email,password)
amazon_obj.change_Ads_carousel()
amazon_obj.check_mobile_link()
amazon_obj.check_Todays_Deal_link()
amazon_obj.check_amazonTV_link()
amazon_obj.signIn(user, password)
amazon_obj.addToCart("iphone")
amazon_obj.close_browser()
