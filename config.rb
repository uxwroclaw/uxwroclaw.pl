# Asset configuration
set :css_dir, 'assets/stylesheets'
set :js_dir, 'assets/javascripts'
set :images_dir, 'assets/images'

# Make Haml use double quotes
set :haml, { attr_wrapper: '"' }

# Use Autoprefixer for stylesheets
activate :autoprefixer do |config|
  config.browsers = 'last 2 versions'
end

# Self-explanatory custom helpers
helpers do
  def page_not_found?
    page = current_page.path.split('.').first
    page && page.to_i === 404
  end
end

# Development-specific configuration
configure :development do
  activate :livereload
end

# Build-specific configuration
configure :build do
  # Minify assets
  activate :minify_css
  activate :minify_javascript

  # Use relative URLs when serving assets
  activate :relative_assets
end
