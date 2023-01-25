require_relative "test_framework"
class AutomateWebpage
    attr_accessor :framework_obj    
    def initialize()
        @framework_obj =Driver.new
    end

    def visit_website(url)
      begin
        framework_obj.navigate_to_page(url)
      rescue 
        return "page not found"
      end
    end

    def check_login_status(usrname)
      begin
        framework_obj.click_element({xpath: "id(\"viewport\")/div[1]/div/div[2]/div[3]/div/button[2]"})
        sleep(5)
        login_status=framework_obj.get_Element_Text({class: "login-title"})
        sleep(5)
        return  "Hey #{usrname}"==login_status ? "user logged in" : "user not logged in"
      rescue 
        return "checking login status failed"
      end
    end

    def login(url,email,pass)
      begin
        
        framework_obj.navigate_to_page(url)
        sleep(5)
        framework_obj.click_element({xpath: "id(\"viewport\")/div[1]/div/div[2]/div[3]/div/button[2]"})
        sleep(5)
        framework_obj.send_key({id: "social_signup-login_email"},email)
        framework_obj.send_key({name: "passowrd"},pass)
        sleep(5)
        framework_obj.click_element({xpath: "id(\"viewport\")/div[4]/span/div/div/aside/div[2]/div/div/form/div/div/button"})
        sleep(5)
        return "login successfully "
      rescue
        return "login  failed"
      end
    end
    
    def logout()
      begin
        sleep(5)
        framework_obj.send_key({xpath: "/html/body"},:arrow_up)
        sleep(5)
        framework_obj.send_key({xpath: "/html/body"},:arrow_up)
        sleep(10)
        framework_obj.click_element({xpath: "id(\"viewport\")/div[1]/div/div[2]/div[3]/div/button[2]"})
        sleep(5)       
        framework_obj.click_element({xpath: "//*[@id=\"viewport\"]/div[4]/span/div/div/aside/div[2]/div/div/div/ul/li[8]/span/a"})
        sleep(2)
        framework_obj.click_element({xpath: "id(\"viewport\")/div[1]/div/div[2]/div[3]/div/button[2]"})
        sleep(5)
        return "logged out successfully"
      rescue 
        return "logged out failed"
      end
    end
    def add_to_wishlist() 
      begin
        sleep(5)
        framework_obj.click_element({xpath: "//*[@id=\"viewport\"]/div[1]/div/div[2]/div[3]/div/button[1]/div"})
        sleep(5)
        framework_obj.click_element({xpath: "//*[@id=\"viewport\"]/div[1]/div/div[3]/div[2]/div[2]/div[3]/div[2]/div[1]/p"})
        sleep(5)
        framework_obj.click_element({xpath: "//*[@id=\"category\"]/div[4]/div/div[1]/div[1]/div[1]/a/div/img"})
        sleep(5)
        framework_obj.click_element({xpath: "//*[@id=\"product__select-size-sizes\"]/div[3]/button"})
        sleep(3)
        framework_obj.click_element({xpath: "//*[@id=\"product\"]/div/div[1]/div[1]/div[2]/div/div[3]/div[2]/div/div[3]/div/div[1]/button[2]"})
        return " successfully added to wishlist "
        
      rescue
        return "add to wishlist failed"
      end
    end
    def add_to_cart(url)
      begin
        sleep(10)
        framework_obj.navigate_to_page(url)
        sleep(5)
        framework_obj.click_element({xpath: "//*[@id=\"viewport\"]/div[1]/div/div[2]/div[3]/div/button[1]/div"})
        sleep(5)
        framework_obj.click_element({xpath: "//*[@id=\"viewport\"]/div[1]/div/div[3]/div[2]/div[2]/div[3]/div[2]/div[1]/p"})
        sleep(5)
        framework_obj.click_element({xpath: "//*[@id=\"category\"]/div[4]/div/div[1]/div[1]/div[1]/a/div/img"})
        sleep(5)
        framework_obj.click_element({xpath: "//*[@id=\"product__select-size-sizes\"]/div[3]/button"})
        sleep(3)
        framework_obj.click_element({xpath: "//*[@id=\"product\"]/div/div[1]/div[1]/div[2]/div/div[3]/div[2]/div/div[3]/div/div[1]/button[1]"})
        return "added to cart successfully"
      rescue => exception
      return "adding to cart failed"
      end 
    end 
end


url="https://www.lovebonito.com/"
automateWebpage_obj=AutomateWebpage.new()
email="wgyjhwjrqxonqinlvz@tmmcv.com"
pass="Pass@1234"
usrname="john"
automateWebpage_obj.visit_website(url)
puts automateWebpage_obj.check_login_status(usrname)
sleep(10)
puts automateWebpage_obj.add_to_cart(url)

puts automateWebpage_obj.login(url,email,pass)
sleep(10)
puts automateWebpage_obj.add_to_wishlist()
puts automateWebpage_obj.logout()
puts automateWebpage_obj.check_login_status() 
