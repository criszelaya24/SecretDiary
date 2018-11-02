class SecretDiary
	def initialize
		@status = true
	end
	def locked
		@status
	end

	def unlocked
		@status = false
	end

	def add_entry
		fail 'Method block' if @status == true
	end

	def get_entries
		fail 'Method block' if @status == true
	end
end

# test = SecretDiary.new
# test.add_entry