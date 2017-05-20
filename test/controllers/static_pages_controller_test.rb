require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  
  
  test "should get root" do
    get '/'
    assert_response :success
  end
  

  test "should get home" do
    get root_path     #get request for home url
    assert_response :success      #Make sure the request returns response 200
    assert_select 'title', "Ruby on Rails" #Make sure the title of home page is select as 'Home'
  end

  test "should get help" do
    get help_path
    assert_response :success      
    assert_select 'title', "Help | Ruby on Rails" #Make sure the title of help page is select as 'Help'
  end

  
  test "should get about" do
    get about_path
    assert_response :success
    assert_select 'title', "Ruby on Rails" #Make sure the title of about page is select as 'About'
  end
  
  test "should get contact" do
    get contact_path
    assert_response :success
    assert_select 'title', "Ruby on Rails"
  end
  
end
