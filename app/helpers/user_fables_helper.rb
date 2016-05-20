module UserFablesHelper
	

	def edit_btn(user_fable)
		button_to 'Edit', edit_user_fable_path(user_fable), class: 'btn btn-primary', method: :get if is_user_fable_completer?(user_fable)
	end
	
	def delete_btn(user_fable)
		button_to 'Destroy', user_fable, method: :delete, data: { confirm: 'Are you sure?' }, class: 'btn btn-primary' if is_user_fable_completer?(user_fable)
	end
	
	def is_user_fable_completer?(user_fable)
		current_user == user_fable.user
	end
	
end
