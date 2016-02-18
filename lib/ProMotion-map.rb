# encoding: utf-8
unless defined?(Motion::Project::Config)
  raise "ProMotion-map must be required within a RubyMotion project."
end

require 'motion-require'

lib_dir_path = File.dirname(File.expand_path(__FILE__))

files = []
files << File.join(lib_dir_path, "ProMotion/map/map_screen_annotation.rb")
files << File.join(lib_dir_path, "ProMotion/map/map_screen_module.rb")
files << File.join(lib_dir_path, "ProMotion/map/map_screen.rb")

Motion::Require.all(files)

Motion::Project::App.setup do |app|
  app.detect_dependencies = false

  app.frameworks += %w(CoreLocation MapKit)
end
