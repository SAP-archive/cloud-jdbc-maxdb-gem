MANIFEST = FileList["Manifest.txt", "Rakefile", "README.txt", "LICENSE.txt", "lib/**/*"]

file "Manifest.txt" => :manifest
task :manifest do
  File.open("Manifest.txt", "w") {|f| MANIFEST.each {|n| f << "#{n}\n"} }
end
Rake::Task['manifest'].invoke # Always regen manifest, so Hoe has up-to-date list of files

$LOAD_PATH << "lib"
require "jdbc/maxdb"
begin
  require 'hoe'
  Hoe.plugin :gemcutter
  Hoe.spec("jdbc-maxdb") do |p|
    version = Jdbc::MaxDB::VERSION
    version += '.' + ENV['DRIVER_REV'] if ENV['DRIVER_REV']
    p.version = version
    p.rubyforge_name = "jruby-extras"
    p.url = "http://www.sap.com"
    p.author = "SAP AG"
    p.email = "krum.bakalsky@sap.com"
    p.summary = "MaxDB JDBC driver for Java and MaxDB/ActiveRecord-JDBC."
    p.changes = "Updated to MaxDB version #{Jdbc::MaxDB::VERSION}."
    p.description = "Install this gem and require 'maxdb' within JRuby to load the driver."
  end.spec.dependencies.delete_if { |dep| dep.name == "hoe" }
rescue LoadError
  puts "You really need Hoe installed to be able to package this gem"
rescue => e
  puts "ignoring error while loading hoe: #{e.to_s}"
end
