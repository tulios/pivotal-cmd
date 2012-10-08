require 'rspec'
require 'pivotal-cmd'

RSpec.configure do |config|
  config.color_enabled = true
  config.formatter     = 'documentation'
end