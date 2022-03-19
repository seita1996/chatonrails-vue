module SosoConcernModule
  extend ActiveSupport::Concern
  def soso
    'soso'
  end

  class_methods do
    def my_class_method
      'i am class method'
    end
  end
end
