require 'SecretDiary'
describe SecretDiary do
	context 'SecretDiary is locked' do
		it 'locked' do
			expect(lock).to eq true
		end
	end
end