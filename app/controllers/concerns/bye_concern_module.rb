module ByeConcernModule
  extend ActiveSupport::Concern
  def bye
    'bye'
  end

  class_methods do
    def my_class_method_bye
      'i am class method bye'
    end
  end
end
