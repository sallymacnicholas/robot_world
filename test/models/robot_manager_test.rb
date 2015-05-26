require_relative '../test_helper'

class RobotManagerTest < Minitest::Test
  def test_can_create_a_robot
    RobotManager.create({ :name => "drew", :city => "city1"})

    robot = RobotManager.find(1)

    assert_equal "city1", robot.city
    assert_equal "state1", robot.state
    # assert_equal "avatar1", robot.avatar
    # assert_equal "birthdate1", robot.birthdate
    # assert_equal "date_hired1", robot.date_hired
    # assert_equal "department1", robot.department

  end
end
