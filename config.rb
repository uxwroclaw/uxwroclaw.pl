# Asset configuration
set :css_dir, 'assets/stylesheets'
set :js_dir, 'assets/javascripts'
set :images_dir, 'assets/images'

# Make Haml use double quotes
set :haml, { attr_wrapper: '"' }

# Self-explanatory custom helpers
helpers do
  def is_404?
    page = current_page.path.split('.').first
    page && Integer(page) === 404
  end

  def is_development?
    !build?
  end
end

# Development-specific configuration
configure :development do
  set :is_development, true

  # Enable Sass source maps
  set :sass, { :debug_info => true }
end

# Build-specific configuration
configure :build do
  # Overwrite the variable
  set :is_development, false

  # Minify assets
  activate :minify_css
  activate :minify_javascript

  # Use relative URLs when serving assets
  activate :relative_assets
end
