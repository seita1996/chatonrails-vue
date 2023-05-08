class Article < ApplicationRecord
  include AASM
  enum status: { draft: 0, published: 1, unpublished: 2, archived: 3 }

  aasm :column => :status, :enum => true do
    state :draft, initial: true
    state :published
    state :unpublished
    state :archived

    event :publish do
      transitions from: :draft, to: :published
    end

    event :unpublish do
      transitions from: :published, to: :unpublished
    end

    event :archive do
      transitions from: :published, to: :archived
    end
  end
end
