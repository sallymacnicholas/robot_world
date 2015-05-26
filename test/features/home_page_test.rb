require_relative '../test_helper'

class HomePageTest < FeatureTest
  def test_welcome_page_message
    visit "/"
    within ("h1:first") do
      assert page.has_content?("Welcome to Robot World, bitches!!")
    end
  end
end
