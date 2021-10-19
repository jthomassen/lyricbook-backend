class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :profile_img, :bio
  has_many :lyrics
end
