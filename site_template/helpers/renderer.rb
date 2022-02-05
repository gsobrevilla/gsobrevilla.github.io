require "erb"

class Renderer 
    def initialize(template_file_path, result_file_path, binding_provider)
        @template_file_path = template_file_path
        @result_file_path = result_file_path
        @binding_provider = binding_provider
    end
  
    def render
        template_file = File.open(@template_file_path, 'rb', &:read)
        File.write(@result_file_path, ERB.new(template_file).result(@binding_provider&.get_binding))
    end
end