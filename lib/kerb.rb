require 'erb'
require 'kerb/template'
require 'kerb/version'

module Kerb
  def self.render(erb, vars)
    template = Kerb::Template.new(erb, vars)
    template.render
  end

  def self.render_to_file(erb, vars, file)
    template = Kerb::Template.new(erb, vars)
    output = template.render

    File.open(file, 'w') { |f| f.write(output) }
  end
end
