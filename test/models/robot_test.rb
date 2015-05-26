require_relative '../test_helper'

class RobotTest < MiniTest::Test
  def test_assigns_attributes_correctly
      data = { "name"       => "Ben Dover",
               "city"       => "Denver",
               "state"      => "CO",
               "birthdate"  => "12/21/1985",
               "date_hired" => "12/21/2011",
               "department" => "IT"}

      robot = Robot.new(data)

      assert_equal "Ben Dover", robot.name
      assert_equal "Denver", robot.city
      assert_equal "CO", robot.state
      assert_equal "12/21/1985", robot.birthdate
      assert_equal "12/21/2011", robot.date_hired
      assert_equal "IT", robot.department
    end
end
