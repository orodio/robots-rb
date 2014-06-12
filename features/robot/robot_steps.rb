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

Then(/^expect a Robot report of (-?\d+),(-?\d+),(.+)$/) do |x, y, d|
  expect(@robot.command("REPORT")).to eq("#{x},#{y},#{d}")
end

Then(/^expect a Robot report of nil$/) do
  expect(@robot.report).to eq(nil)
end
