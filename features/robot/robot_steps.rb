require 'robot'

Given(/^a Robot is placed at (-?\d+),(-?\d+),(.+)$/) do |x, y, d|
  @robot = Robot.new
  @robot.place x.to_i, y.to_i, d
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

Then(/^expect a Robot report of (-?\d+),(-?\d+),(.+)$/) do |x, y, d|
  expect(@robot.report).to eq("#{x},#{y},#{d}")
end

Then(/^expect a Robot report of nil$/) do
  expect(@robot.report).to eq(nil)
end
