module Camden
  module StyleGuide
    module TagHelper
      class << self
        include ActionView::Helpers::AssetTagHelper
        include Camden::StyleGuide::ApplicationHelper

        def style_guide_css_pack_tag(**options)
          stylesheet_pack_tag('style_guide', **options)
        end
      end
    end
  end
end
