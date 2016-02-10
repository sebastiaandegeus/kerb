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
end
