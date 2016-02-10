require 'kerb/version'
require 'erb'

module Kerb
  class Template
    def initialize(erb, vars)
      @erb = erb
      vars.each { |k, v| instance_variable_set("@#{k}", v) }
    end

    def render
      ERB.new(@erb).result(binding)
    end

    def render_to_file(file)
      File.open(file, 'w') { |f| f.write(render) }
    end
  end

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
