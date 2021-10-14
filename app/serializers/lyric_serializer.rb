class LyricSerializer < ActiveModel::Serializer
  attributes :id, :title, :artist_name, :content, :copyright_name, :copyright_year, :user_id
  # belongs_to :user
end
