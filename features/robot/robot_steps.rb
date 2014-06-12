require 'robot'

Given(/^a Robot is placed at (-?\d+),(-?\d+),(.+)$/) do |x, y, d|
  @robot = Robot.new
  @robot.place x, y, d
end

When(/^Robot turns left$/) do
  @robot.left
end

When(/^Robot turns right$/) do
  @robot.right
end

When(/^Robot moves$/) do
  @robot.move
end

When(/^given the command "(.*?)"$/) do |command|
  @robot.command(command)
end

Then(/^expect a robot current position of "(.*?)"$/) do |pos|
  expect(@robot.current_position).to eq(pos)
end

Then(/^expect a robot current position of nil$/) do
  expect(@robot.current_position).to eq(nil)
end

