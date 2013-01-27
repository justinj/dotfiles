require "irb/completion"
Dir.glob("/home/justin/.irb/*.rb").each { |file| require(file) }

IRB.conf[:USE_READLINE] = true
IRB.conf[:PROMPT_MODE] = :SIMPLE
IRB.conf[:AUTO_INDENT] = true
