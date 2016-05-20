module FablesHelper
	
	def print_line(line)
		text = ""
		text += " " unless (line["text"] =~ /^[[:punct:]]/)
		text += "#{line["text"]} #{line['kind'].to_s.upcase}"
	end
	
	def create_fable_btn(fable)
		button_to "Complete your own!", new_user_fable_path(id: fable.id), method: :post, class: 'btn btn-primary'
	end
	
	def read_fables_btn(fable)
		button_to "Read Results", fable_path(fable), class: 'btn btn-primary', method: :get 
	end
	
end