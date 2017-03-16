module BuildShout
	extend ActiveSupport::Concern


	def build_content(content)
		current_user.shouts.build(content: content)
	end


end