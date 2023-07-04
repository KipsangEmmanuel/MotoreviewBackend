class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :content
  # , :likes
  belongs_to :user
  belongs_to :bike
end
