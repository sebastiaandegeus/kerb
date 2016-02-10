$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'kerb'
require 'fakefs/spec_helpers'

RSpec.configure do |config|
  config.include FakeFS::SpecHelpers, fakefs: true
end

module Helper
  def self.data(file)
    data = File.expand_path('../../spec/data', __FILE__)
    path = File.join(data, file)
    File.read(path)
  end
end
