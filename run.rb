#!/usr/bin/env ruby#!/usr/bin/env ruby

require File.join(File.dirname(__FILE__), 'lib', 'robot')
require File.join(File.dirname(__FILE__), 'lib', 'table')
require File.join(File.dirname(__FILE__), 'lib', 'position')

robot = Robot.new
robot.command 'PLACE 0,0,NORTH'
robot.command 'MOVE'
robot.command 'MOVE'
robot.command 'RIGHT'
puts robot.command('REPORT')
