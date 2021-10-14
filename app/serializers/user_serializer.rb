class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :password_digest, :bio, :profile_img
  has_many :lyrics
end
