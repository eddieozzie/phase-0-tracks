require_relative 'robot'


describe Robot do 

	it "put arm up" do

		robot = Robot.new
		expect(robot.put_arm_up).to eq "put arm up"

	end

	it "put arm up" do

		robot = Robot.new
		expect(robot.put_arm_up).to eq "put arm up"

	end
end