require 'yaml'
test_obj = ['a', 'b', 'c']
yaml_obj = YAML::dump( test_obj )
ruby_obj = YAML::load( yaml_obj )
puts ruby_obj == test_obj

# YAML::load_file
# load_file(filepath) => Load a document from the file located at filepath.
#YAML.load_file( 'animals.yaml' )
# ref. https://ruby-doc.org/stdlib-1.8.6/libdoc/yaml/rdoc/YAML.html
