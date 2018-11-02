require 'SecretDiary'
# THE PASS CLASS
describe Security do
	context 'Key for the dairy is locked' do
		it 'locked acces to diary' do
			secret = Security.new
			expect(secret.locked).to eq true
		end
	end

	context 'Key for the dairy is unlocked' do
		it 'unlocked acces to diary' do
			secret = Security.new
			expect(secret.unlocked).to eq false
		end
	end
end
# THE METHOD CLASS
describe Diary do
	context 'Calling method while is block' do
		it 'Raise error when is lock' do
			error = Diary.new
			#Open {} i
			expect{error.add_entry error.get_entries}.to raise_error('Method locked')
		end
	end

	context 'Writing into the diary' do
		it 'Writing a entry to the diary' do
			write = Diary.new
			write.unlocked
			expect(write.add_entry('Page 1')).to eq('Page 1')
		end
	end
end