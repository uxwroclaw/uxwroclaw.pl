# Asset configuration
set :css_dir, 'assets/stylesheets'
set :js_dir, 'assets/javascripts'
set :images_dir, 'assets/images'

# Make Haml use double quotes
set :haml, { attr_wrapper: '"' }

# Development-specific configuration
configure :development do
  # Enable Sass source maps
  set :sass, { :debug_info => true }
end

# Build-specific configuration
configure :build do
  # Minify assets
  activate :minify_css
  activate :minify_javascript

  # Use relative URLs when serving assets
  activate :relative_assets
end
