require 'test/unit'
require_relative 'test_framework'
require_relative 'webdriver'

class FrameworkTest < Test::Unit::TestCase
    @@url="file:///app/index.html"
    def test_for_object_creation_of_Webdriver
        webdriver_obj =Webdriver.new()
        assert webdriver_obj.instance_of? Webdriver
    end

    def test_for_object_creation
        framework_obj = Framework.new("test")
        assert framework_obj.instance_of? Framework
    end
    
    def test_for_navigate_to_page_valid_case
        webdriver_obj =Webdriver.new()
        driver=webdriver_obj.instance_variable_get(:@driver)
        framework_obj = Framework.new(driver)
        framework_obj = Framework.new(webdriver_obj.instance_variable_get(:@driver))
        assert_equal("This is dummy page",framework_obj.navigate_to_page(@@url))
    end
    def test_click_element_valid_case()
        webdriver_obj =Webdriver.new()
        driver=webdriver_obj.instance_variable_get(:@driver)
        framework_obj = Framework.new(driver)
        driver.get(@@url)
        framework_obj.click_element({xpath: "//*[@id=\"test-btn\"]"})
        btn_inner_text=driver.find_element({xpath: "//*[@id=\"test-btn\"]"}).text
        assert_equal("Button Clicked",btn_inner_text)
    end
    def test_for_send_text()
        webdriver_obj =Webdriver.new()
        driver=webdriver_obj.instance_variable_get(:@driver)
        framework_obj = Framework.new(driver)
        driver.get(@@url)
        framework_obj.send_key({xpath: "//*[@id=\"email\"]"},"test-mail")
        mail=driver.find_element({xpath: "//*[@id=\"email\"]"}).attribute("value")
        assert_equal("test-mail",mail)
    end
    def text_for_get_text
        webdriver_obj =Webdriver.new()
        driver=webdriver_obj.instance_variable_get(:@driver)
        framework_obj = Framework.new(driver)
        driver.get(@@url)
        form_title=framework_obj.get_text({xpath: "//*[@id=\"form-title\"]"})
        assert_equal("Test Form",form_title)
    end    

    def test_element_displayed_valid_case()
        webdriver_obj =Webdriver.new()
        driver=webdriver_obj.instance_variable_get(:@driver)
        framework_obj = Framework.new(driver)
        driver.get(@@url)        
        result=framework_obj.displayed({xpath: "//*[@id=\"form-title\"]"})
        assert_equal(true,result)
    end
    
    def test_find_element_valid_case()
        webdriver_obj =Webdriver.new()
        driver=webdriver_obj.instance_variable_get(:@driver)
        framework_obj =Framework.new(driver)
        driver.get(@@url)
        output = framework_obj.find_element({xpath: "//*[@id=\"form-title\"]"})
        assert_not_equal(nil,output)
    end
    def test_find_element_invalid_case()
        webdriver_obj =Webdriver.new()
        driver=webdriver_obj.instance_variable_get(:@driver)
        framework_obj = Framework.new(driver)
        driver.get(@@url)
        output = framework_obj.find_element({xpath: "//*[@id=\"form\"]"})
        assert_equal(nil,output)
    end
    def test_id_selector_in_find_element_method()
        webdriver_obj =Webdriver.new()
        driver=webdriver_obj.instance_variable_get(:@driver)
        framework_obj = Framework.new(driver)
        driver.get(@@url)
        output = framework_obj.find_element({id: "test-btn"})
        assert_not_equal(nil,output)
    end

    def test_xpath_selector_in_find_element_method()
        webdriver_obj =Webdriver.new()
        driver=webdriver_obj.instance_variable_get(:@driver)
        framework_obj = Framework.new(driver)
        driver.get(@@url)
        output = framework_obj.find_element({xpath: "//*[@id=\"form-title\"]"})
        assert_not_equal(nil,output)
    end
    def test_css_selector_in_find_element_method()
        webdriver_obj =Webdriver.new()
        driver=webdriver_obj.instance_variable_get(:@driver)
        framework_obj = Framework.new(driver)
        driver.get(@@url)
        output = framework_obj.find_element({css: "h1"})
        assert_not_equal(nil,output)
    end
end