class BikeSerializer < ActiveModel::Serializer
  attributes :id, :name, :description
  belongs_to :user
  has_many :reviews
end