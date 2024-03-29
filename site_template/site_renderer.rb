# Gems
require "i18n"

# Pages
require "./pages/index.rb"

class SiteRenderer

    def render_all_pages(locale)
        # Sets current locale
        I18n.locale = locale
        # Renders all pages
        Index.new.render
    end
end