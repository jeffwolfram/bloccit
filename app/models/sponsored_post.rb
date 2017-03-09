class SponsoredPost < ApplicationRecord
  belongs_to Topic
  has_many :comments, dependent: :destroy
end
