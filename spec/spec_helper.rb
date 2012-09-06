require 'simplecov'
SimpleCov.start

require 'minitest/spec'
require 'minitest/autorun'
require 'minitest/reporters'
require 'turn'
require 'growl'

MiniTest::Reporters.use!

require './lib/define-wn'
