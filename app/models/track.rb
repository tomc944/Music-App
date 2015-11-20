class Track < ActiveRecord::Base
  validates :album_id, :recording_type, :lyrics, presence: true

  belongs_to :album,
    primary_key: :id,
    foreign_key: :album_id,
    class_name: "Album"
end
