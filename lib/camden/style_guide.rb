module Camden
  module StyleGuide
    ROOT_PATH = Pathname.new(File.join(__dir__, "../.."))

    class << self
      def webpacker
        @webpacker ||= ::Webpacker::Instance.new(
          root_path: ROOT_PATH,
          config_path: ROOT_PATH.join("config/webpacker.yml")
        )
      end
    end
  end
end

require "camden/style_guide/engine"
