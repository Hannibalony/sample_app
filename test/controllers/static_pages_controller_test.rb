require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  
  def setup
    @base_title = "Ruby on Rails"
  end
  
  test "should get root" do
    get '/'
    assert_response :success
  end
  

  
  test "should get home" do
    get static_pages_home_url     #get request for home url
    assert_response :success      #Make sure the request returns response 200
    assert_select 'title', "Home | #{@base_title}" #Make sure the title of home page is select as 'Home'
  end

  test "should get help" do
    get static_pages_help_url
    assert_response :success      
    assert_select 'title', "Help | #{@base_title}" #Make sure the title of help page is select as 'Help'
  end

  
  test "should get about" do
    get static_pages_about_url
    assert_response :success
    assert_select 'title', "About | #{@base_title}" #Make sure the title of about page is select as 'About'
  end
  
  test "should get contact" do
    get static_pages_contact_url
    assert_response :success
    assert_select 'title', "Contact | #{@base_title}"
  end
  
end
