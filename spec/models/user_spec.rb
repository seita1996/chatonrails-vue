require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'is_test?' do
    context 'when name include test' do
      let(:user) { FactoryBot.create(:user, name: 'test taro') }
      it 'return true' do
        expect(user.is_test?).to be_truthy
      end
    end
    context 'when name exclude test' do
      let(:user) { FactoryBot.create(:user, name: 'hoge taro') }
      it 'return false' do
        expect(user.is_test?).to be_falsey
      end
    end
  end
end
