require "irb/completion"
home_dir = File.expand_path("~")
Dir.glob("#{home_dir}/.irb/*.rb").each { |file| require(file) }

IRB.conf[:USE_READLINE] = true
IRB.conf[:PROMPT_MODE] = :SIMPLE
IRB.conf[:AUTO_INDENT] = true
