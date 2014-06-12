require 'position'

Given(/^an initial position of (\d+),(\d+),(.+)$/) do |x,y,d|
  @position = Position.new(x, y, d)
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

Then(/^expect a current position of "(.*?)"$/) do |pos|
  expect(@position.current_position).to eq(pos)
end
