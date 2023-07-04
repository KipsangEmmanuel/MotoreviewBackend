class BikeSerializer < ActiveModel::Serializer
  attributes :id, :name,:image, :description
  belongs_to :user
  has_many :reviews
end