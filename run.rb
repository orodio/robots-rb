#!/usr/bin/env ruby

require File.join(File.dirname(__FILE__), 'lib', 'robot')

file = File.open 'commands.txt', 'r'

robot = Robot.new

file.each do |command|
  robot = Robot.new if command === '---'
  robot.command command
end

file.close
