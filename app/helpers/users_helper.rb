module UsersHelper

	def hello
		'Hello, World!'
	end

	def heading
		content_tag :h1, do 
			link_to 'Google', 'https://google.com'
		end
	end

end
