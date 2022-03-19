require 'rails_helper'

RSpec.describe SosoConcernModule do
  describe 'soso' do
    context '特異メソッドとして使う場合' do
      let(:dummy_class) { Class.new { extend SosoConcernModule } }
      subject { dummy_class.soso }

      it { expect(subject).to eq 'soso' }
    end

    context 'インスタンスメソッドとして使う場合' do
      let(:dummy_class) { Class.new { include SosoConcernModule } }
      let(:dummy_class_instance) { dummy_class.new }
      subject { dummy_class_instance.soso }

      it { expect(subject).to eq 'soso' }
    end
  end

  describe 'my_class_method' do
    context 'include先のClassMethodとして呼び出せる' do
      let!(:hoge_class) do
        class Hoge
          include SosoConcernModule
        end
      end
      subject { Hoge.my_class_method }

      # どちらでも同じ
      let(:dummy_class) { Class.new { include SosoConcernModule } }
      subject { dummy_class.my_class_method }

      it { expect(subject).to eq 'i am class method' }
    end
  end
end
