require_relative 'lib/app'
require_relative 'spec/helper_functions'

anagram = App.new
raise ArgumentError if validate_one_arg(ARGV)
anagram.parse_user_input(ARGV[0])
anagram.start_app
