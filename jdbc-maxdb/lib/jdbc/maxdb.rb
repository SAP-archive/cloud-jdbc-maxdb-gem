module Jdbc
  module MaxDB
    VERSION = "7.8.00.17"
  end
end
if RUBY_PLATFORM =~ /java/
  require "sapdbc.jar"
else
  warn "jdbc-maxdb is only for use with JRuby"
end
