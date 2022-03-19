require 'rails_helper'

RSpec.describe HelloModule do
  context '特異メソッドとして使う場合' do
    let(:dummy_class) { Class.new { extend HelloModule } }
    subject { dummy_class.hello }

    it { expect(subject).to eq 'hello' }
  end

  context 'インスタンスメソッドとして使う場合' do
    let(:dummy_class) { Class.new { include HelloModule } }
    let(:dummy_class_instance) { dummy_class.new }
    subject { dummy_class_instance.hello }

    it { expect(subject).to eq 'hello' }
  end
end
