require 'test/unit'
require_relative 'test_framework'

class FrameworkTest < Test::Unit::TestCase
    @@url="file:///app/index.html"
    def test_for_object_creation
        framework_obj = Driver.new()
        assert framework_obj.instance_of? Driver
    end
    def test_for_navigate_to_page_validCase
        framework_obj = Driver.new()
        assert_equal("This is dummy page",framework_obj.navigate_to_page(@@url))
    end
    def test_click_element_validCase()
        framework_obj = Driver.new()
        framework_obj.navigate_to_page(@@url)
        framework_obj.click_element({xpath: "//*[@id=\"test-btn\"]"})
        btn_inner_text=framework_obj.get_Element_Text({xpath: "//*[@id=\"test-btn\"]"})
        assert_equal("Button Clicked",btn_inner_text)
    end
    def test_for_send_text()
        framework_obj = Driver.new()
        framework_obj.navigate_to_page(@@url)
        framework_obj.send_key({xpath: "//*[@id=\"name\"]"},"test-name")
        framework_obj.send_key({xpath: "//*[@id=\"email\"]"},"test-mail")
        framework_obj.click_element({xpath: "//*[@id=\"test-btn\"]"})
        name=framework_obj.get_Element_Text({xpath: "//*[@id=\"name\"]"})
        mail=framework_obj.get_Element_Text({xpath: "//*[@id=\"email\"]"})

        assert_equal("",name)
        assert_equal("",mail)
    end
    def test_element_displayed_validCase()
        framework_obj = Driver.new()
        framework_obj.navigate_to_page(@@url)
        result=framework_obj.displayed({xpath: "//*[@id=\"form-title\"]"})
        assert_equal(true,result)
    end
    
    def test_select_element_validCase()
        framework_obj = Driver.new()
        framework_obj.navigate_to_page(@@url)
        output = framework_obj.select_element({xpath: "//*[@id=\"form-title\"]"})
        assert_not_equal(nil,output)
    end
    def test_select_element_invalidCase()
        framework_obj = Driver.new()
        framework_obj.navigate_to_page(@@url)
        output = framework_obj.select_element({xpath: "//*[@id=\"form\"]"})
        assert_equal(nil,output)
    end
    def test_id_selector()
        framework_obj = Driver.new()
        framework_obj.navigate_to_page(@@url)
        output = framework_obj.select_element({id: "test-btn"})
        assert_not_equal(nil,output)
    end
    def test_xpath_selector()
        framework_obj = Driver.new()
        framework_obj.navigate_to_page(@@url)
        output = framework_obj.select_element({xpath: "//*[@id=\"form-title\"]"})
        assert_not_equal(nil,output)
    end
    def test_css_selector()
        framework_obj = Driver.new()
        framework_obj.navigate_to_page(@@url)
        output = framework_obj.select_element({css: "h1"})
        assert_not_equal(nil,output)
    end
end