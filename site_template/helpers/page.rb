require "i18n"

class Page 

    def template_file_name
        "#{self.class.name.split('::').last.downcase}.html.erb"
    end

    def template_file_path
        "./templates/" + template_file_name
    end

    def rendered_view_file_path
        "../site/#{I18n.locale}/#{template_file_name.gsub('.erb', '')}"
    end

    def get_binding
        binding
    end

    def t(key)
        I18n.t(key)
    end

    def l(path, locale = I18n.locale)
        "/site/#{locale.to_s}/#{path}"
    end

    def render  
        Renderer.new(template_file_path, rendered_view_file_path, self).render
    end
end