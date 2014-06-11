require 'table'

Given(/^a Table$/) do
  @table = Table.new
end

Given(/^a (-?\d+)x(-?\d+) Table$/) do |x, y|
  @table = Table.new(x.to_i, y.to_i)
end

Then(/^a position of \((-?\d+),(-?\d+)\) is valid$/) do |x, y|
  expect(@table.is_valid?(x.to_i, y.to_i)).to eq(true)
end

Then(/^a position of \((-?\d+),(-?\d+)\) is invalid$/) do |x, y|
  expect(@table.is_valid?(x.to_i, y.to_i)).to eq(false)
end
