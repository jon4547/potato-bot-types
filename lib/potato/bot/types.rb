module Potato
  module Bot
    module Types
      module_function

      # Simple implementation for internal use only.
      def camelize(str)
        str.gsub(/(?:_|(\/)|^)([a-z\d]*)/i) { "#{$1}#{$2.capitalize}" }
      end

      %w[
        animation
        audio
        base
        callback_game
        callback_query
        chat
        chat_member
        chat_photo
        chosen_inline_result
        contact
        document
        file
        force_reply
        game
        game_high_score
        inline_keyboard_button
        inline_keyboard_markup
        inline_query
        inline_query_result_article
        inline_query_result_audio
        inline_query_result_cached_audio
        inline_query_result_cached_document
        inline_query_result_cached_gif
        inline_query_result_cached_mpeg4_gif
        inline_query_result_cached_photo
        inline_query_result_cached_sticker
        inline_query_result_cached_video
        inline_query_result_cached_voice
        inline_query_result_contact
        inline_query_result_document
        inline_query_result_game
        inline_query_result_gif
        inline_query_result_location
        inline_query_result_mpeg4_gif
        inline_query_result_photo
        inline_query_result_venue
        inline_query_result_video
        inline_query_result_voice
        input_contact_message_content
        input_location_message_content
        input_message_content
        input_text_message_content
        input_venue_message_content
        invoice
        keyboard_button
        labeled_price
        location
        mask_position
        message
        message_entity
        order_info
        photo_size
        pre_checkout_query
        reply_keyboard_markup
        reply_keyboard_remove
        response
        shipping_address
        shipping_option
        shipping_query
        sticker
        sticker_set
        successful_payment
        update
        user
        user_profile_photos
        venue
        video
        video_note
        voice
        webhook_info
      ].each do |type|
        autoload camelize(type), "Potato/bot/types/#{type}"
      end
    end
  end
end
