class  Security
	def initialize
		@@status = true
	end
	def locked
		@@status = true
	end

	def unlocked
		@@status = false
	end

end

class Diary < Security
	def add_entry(add)
		fail 'Method block' if @@status == true
		@add = add
		@add
	end

	def get_entries
		fail 'Method block' if @@status == true
	end
end

# test = SecretDiary.new
# test.unlocked
# test.add_entry