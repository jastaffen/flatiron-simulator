require 'tty'
require_relative '../config/environment'
require_relative 'methods.rb'

cli = CLI.new

cli.runner

