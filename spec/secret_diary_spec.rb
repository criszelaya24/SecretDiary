require 'SecretDiary'
describe SecretDiary do
	context 'SecretDiary is locked' do
		it 'locked' do
			secret = SecretDiary.new
			expect(secret.locked).to eq true
		end
	end

	context 'Calling method while there are blocks' do
		it 'error' do
			error = SecretDiary.new
			expect(secret.add_entry).to raise_error 'Method block'
		end
	end
end