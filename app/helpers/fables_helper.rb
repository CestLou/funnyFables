module FablesHelper
	
	def print_line(line)
		text = ""
		text += " " unless (line["text"] =~ /^[[:punct:]]/)
		text += "#{line["text"]} #{line['kind'].to_s.upcase}"
	end
	
end