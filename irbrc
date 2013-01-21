home_dir = File.expand_path("~")
Dir.glob("#{home_dir}/.irb/*.rb").each { |file| require(file) }
