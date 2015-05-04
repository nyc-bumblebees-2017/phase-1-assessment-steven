require 'active_support/inflector'

path_to_part_3_folder = File.expand_path('../..', __FILE__)
Dir["#{path_to_part_3_folder}/*.rb"].each do |file|
  klass = File.basename(file).split('.').first.classify
  autoload klass.to_sym, file
end
