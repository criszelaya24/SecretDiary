require 'SecretDiary'
describe SecretDiary do
	context 'SecretDiary is locked' do
		it 'locked' do
			secret = SecretDiary.new
			expect(secret.locked).to eq true
		end
	end

	context 'Calling method entry while is block' do
		it 'error' do
			error = SecretDiary.new
			expect{error.add_entry error.get_entries}.to raise_error('Method block')
		end
	end


end