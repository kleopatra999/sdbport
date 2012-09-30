require 'trollop'
require 'sdbport/cli/export'
require 'sdbport/cli/import'
require 'sdbport/cli/purge'

module Sdbport
  class CLI

    def start

      cmd = ARGV.shift

      case cmd
      when 'export'
        CLI::Export.new.export
      when 'import'
        CLI::Import.new.import
      when 'purge'
        CLI::Purge.new.purge
      when '-v'
        puts Sdbport::VERSION
      else
        puts "Unkown command: '#{cmd}'." unless cmd == '-h'
        puts "sdbport [export|import|purge] OPTIONS"
        puts "Append -h for help on specific subcommand."
      end
 
    end

  end
end
