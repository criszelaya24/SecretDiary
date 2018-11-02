require 'SecretDiary'
describe SecretDiary do
	context 'SecretDiary is locked' do
		it 'locked' do
			secret = SecretDiary.new
			expect(secret.locked).to eq true
		end
	end
end