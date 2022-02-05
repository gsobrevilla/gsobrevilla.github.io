# Gems
require "erb"
require "i18n"
# Helpers
require "./helpers/renderer.rb"
require "./helpers/page.rb"
# Main Renderer
require "./site_renderer.rb"

# Load translations
I18n.load_path << Dir[File.expand_path("locales") + "/*.yml"]
I18n.config.available_locales = [:en, :es]

# Render pages
SiteRenderer.new.render_all_pages(:en)
SiteRenderer.new.render_all_pages(:es)






