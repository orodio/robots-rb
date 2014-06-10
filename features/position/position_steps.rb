require 'position'

Given(/^an initial position of (\d+),(\d+),(.+)$/) do |x,y,d|
  @position = Position.new(x.to_i, y.to_i, d)
end

When(/^position turns left$/) do
  @position = @position.left
end

When(/^position turns right$/) do
  @position = @position.right
end

When(/^position moves$/) do
  @position = @position.move
end

Then(/^expect a report of (\d+),(\d+),(.+)$/) do |x,y,d|
  expect(@position.report).to eq("#{x},#{y},#{d}")
end

