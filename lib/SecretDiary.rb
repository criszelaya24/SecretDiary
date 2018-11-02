class  Pass
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

class Methods < Pass
	def add_entry
		fail 'Method block' if @@status == true
	end

	def get_entries
		fail 'Method block' if @@status == true
	end
end

# test = SecretDiary.new
# test.unlocked
# test.add_entry