require "yaml"
require "optparse"
require "rest_client"
require "colored"
require "nokogiri"

module Pivotal
  module Cmd

    COMMANDS = ["current"]

    def self.run! args = []
      @@gateway ||= Gateway.new(Config.new)

      if args.nil? or args.empty? or not COMMANDS.include?(args[0])
        print_help
        exit 1
      end

      result = @@gateway.send args[0].to_sym
      Printer.new(result).print
    end

    private
    def self.print_help
      puts "\nOptions:"
      puts "\t#{"current".yellow} - Get stories of current iteraction"
      puts "\t          ex: pivotal-cmd current"
      puts "\n"
    end

  end
end

require_relative "pivotal-cmd/config"
require_relative "pivotal-cmd/gateway"
require_relative "pivotal-cmd/iteration"
require_relative "pivotal-cmd/story"
require_relative "pivotal-cmd/printer"
require_relative "pivotal-cmd/version"
