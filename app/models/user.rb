class User < ApplicationRecord
  def is_test?
    self.name.include?('test')
  end
end
