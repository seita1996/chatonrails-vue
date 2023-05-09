class User
  include ActiveModel::Model
  include ActiveModel::Validations::Callbacks

  attr_accessor :name, :email

  validates :name, presence: true
  validates :email, presence: true

  before_validation :before_validation
  after_validation :after_validation

  def save
    if valid?
      # ここにvalidation成功後の処理を書く
      true
    else
      false
    end
  end

  private

  def before_validation
    puts 'before_validation'
  end

  def after_validation
    puts 'after_validation'
  end
end
