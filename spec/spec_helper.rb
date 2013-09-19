require "simplecov"

if ENV["CI"]
  require "coveralls"
  SimpleCov.formatter = Coveralls::SimpleCov::Formatter
  Coveralls.wear!
end

SimpleCov.start do
  add_filter "spec"
end

$: << File.expand_path(File.join(File.dirname(__FILE__), "..", "lib"))

require "rspec"
require "maildropr"

RSpec.configure do |config|
  config.treat_symbols_as_metadata_keys_with_true_values = true
  config.run_all_when_everything_filtered = true
  config.filter_run :focus
  config.order = 'random'
end
