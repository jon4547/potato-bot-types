module Potato
  module Bot
    module Types
      class UserProfilePhotos < Base
        attribute :total_count, Integer
        attribute :photos, [[PhotoSize]]
      end
    end
  end
end
