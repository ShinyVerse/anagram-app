require_relative 'lib/app'

ana = App.new
ana.parse_user_input(ARGV[0])
ana.start_app
