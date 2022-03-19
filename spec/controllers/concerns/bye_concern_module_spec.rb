require 'rails_helper'

RSpec.describe ByeConcernModule do
  describe 'bye' do
    context '特異メソッドとして使う場合' do
      let(:dummy_class) { Class.new { extend ByeConcernModule } }
      subject { dummy_class.bye }

      it { expect(subject).to eq 'bye' }
    end

    context 'インスタンスメソッドとして使う場合' do
      let(:dummy_class) { Class.new { include ByeConcernModule } }
      let(:dummy_class_instance) { dummy_class.new }
      subject { dummy_class_instance.bye }

      it { expect(subject).to eq 'bye' }
    end
  end

  describe 'my_class_method_bye' do
    context 'include先のClassMethodとして呼び出せる' do
      let!(:hoge_class) do
        class Hoge
          include ByeConcernModule
        end
      end
      subject { Hoge.my_class_method_bye }

      # どちらでも同じ
      let(:dummy_class) { Class.new { include ByeConcernModule } }
      subject { dummy_class.my_class_method_bye }

      it { expect(subject).to eq 'i am class method bye' }
    end
  end
end
