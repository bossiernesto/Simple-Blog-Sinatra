require "test_helper"

require "webrat"
require "rack/test"
debugger
require "stories"
require "stories/runner"

Webrat.configure do |config|
  config.mode = :rack
end

class Test::Unit::TestCase
  include Webrat::Methods
  include Webrat::Matchers
  include Stories::Webrat
end
