require 'webpacker'
require 'webpacker/helper'

module Camden
  module StyleGuide
    module ApplicationHelper
      include ::Webpacker::Helper

      def current_webpacker_instance
        Camden::StyleGuide.webpacker
      end
    end
  end
end
