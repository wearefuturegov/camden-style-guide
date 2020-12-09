module Camden
  module StyleGuide
    class Engine < ::Rails::Engine
      isolate_namespace Camden::StyleGuide

      initializer "webpacker.proxy" do |app|
        if Camden::StyleGuide.webpacker.config.dev_server.present?
          app.middleware.insert_before(
            0, Webpacker::DevServerProxy, # "Webpacker::DevServerProxy" if Rails version < 5
            ssl_verify_none: true,
            webpacker: Camden::StyleGuide.webpacker
          )
        end
      end

      config.app_middleware.use(
        Rack::Static,
        urls: ["/style-guide-packs"], root: "#{Camden::StyleGuide::ROOT_PATH}/public"
      )
    end
  end
end
