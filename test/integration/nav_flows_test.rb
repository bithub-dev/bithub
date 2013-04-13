require 'test_helper'

class NavFlowsTest < ActionDispatch::IntegrationTest
  test 'home has nothing selected' do
    visit '/'
    assert page.has_no_selector?('.navbar li.active')
  end

  test 'students has students selected' do
    assert clicking_on_nav_activates('Students')
  end

  test 'tips has tips selected' do
    assert clicking_on_nav_activates('Tips & Tricks')
  end

  test 'resouces has resources selected' do
    assert clicking_on_nav_activates('Resources')
  end

  def clicking_on_nav_activates(link_text)
    visit '/'
    click_link link_text
    find('.navbar li.active').has_content?(link_text)
  end

end
