require "dotenv"
require "dotenv/parser"
require "dotenv/configuration/version"

module Dotenv
  module Configuration
    def configure(*args)
      envfile, settings = nil, nil
      case args.size
      when 1
        envfile, settings = '.env', args[0]
      when 2
        envfile, settings = *args
      else
        raise ArgumentError
      end

      current = Parser.new ::File.read(envfile)
      if settings.keys.any? {|key| !current[key] }
        t = Tempfile.new("dotenv-configuration")
        settings.each do |key, default_value|
          t << "#{key}=#{current[key] || default_value}" << "\n"
        end
        t.close
        system(ENV["EDITOR"], t.path)

        t.open
        File.open(envfile, "w") do |f|
          f.write t.read
        end
      end

      load
    end

    alias get configure
  end

  Dotenv.extend Configuration
end
