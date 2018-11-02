require 'SecretDiary'
# THE PASS CLASS
describe Pass do
	context 'Key for the dairy is locked' do
		it 'locked' do
			secret = Pass.new
			expect(secret.locked).to eq true
		end
	end

	context 'Key for the dairy is unlocked' do
		it 'unlocked' do
			secret = Pass.new
			expect(secret.unlocked).to eq false
		end
	end
end
# THE METHOD CLASS
describe Methods do
	context 'Calling method while is block' do
		it 'error' do
			error = Methods.new
			#Open {} i
			expect{error.add_entry error.get_entries}.to raise_error('Method block')
		end
	end

	context 'Writing into the diary' do
		it 'Writing..' do
			write = Methods.new
			write.unlocked
			expect(write.add_entry(1)).to eq(1)
		end
	end
end