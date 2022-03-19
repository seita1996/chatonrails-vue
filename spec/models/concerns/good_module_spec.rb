require 'rails_helper'

RSpec.describe GoodModule do
  context '特異メソッドとして使う場合' do
    let(:dummy_class) { Class.new { extend GoodModule } }
    subject { dummy_class.ok }

    it { expect(subject).to eq 'ok' }
  end

  context 'インスタンスメソッドとして使う場合' do
    let(:dummy_class) { Class.new { include GoodModule } }
    let(:dummy_class_instance) { dummy_class.new }
    subject { dummy_class_instance.ok }

    it { expect(subject).to eq 'ok' }
  end
end
