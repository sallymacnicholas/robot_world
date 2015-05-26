require_relative '../test_helper'

class CreateTaskTest < FeatureTest
  def test_create_new_task_with_title
    visit '/robots/new'
    fill_in 'robot[name]', with: "Ben Dover"
    fill_in 'robot[city]', with: "Seattle"
    fill_in 'robot[state]', with: "Washington"
    fill_in 'robot[birthdate]', with: "12/21/1985"
    fill_in 'robot[date_hired]', with: "03/31/2015"
    fill_in 'robot[department]', with: "Finance"

    click_on "Register"

    within("h3:first") do
      assert page.has_content?("Ben Dover")
    end

    click_on "Ben Dover"

    within("h1:first") do
      assert page.has_content?("Ben Dover")
    end

    within("ul") do
      assert page.has_content?("Seattle")
    end

    within("ul") do
      assert page.has_content?("12/21/1985")
    end

    within("ul") do
      assert page.has_content?("03/31/2015")
    end

    within("ul") do
      assert page.has_content?("Finance")
    end

  end
end
