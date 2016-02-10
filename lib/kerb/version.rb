module Kerb
  module VERSION
    MAJOR = 0
    MINOR = 1
    TINY  = 0

    STRING = [MAJOR, MINOR, TINY].compact.join('.')
  end

  def self.version
    Gem::Version.new VERSION::STRING
  end
end
