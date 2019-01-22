require_relative 'lib/app'

ana = App.new
ana.parse_input(ARGV[0])
ana.start_app
