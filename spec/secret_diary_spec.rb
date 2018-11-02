require 'SecretDiary'
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
describe Methods do
	context 'Calling method while is block' do
		it 'error' do
			error = Methods.new
			#Open {} i
			expect{error.add_entry error.get_entries}.to raise_error('Method block')
		end
	end
end
end