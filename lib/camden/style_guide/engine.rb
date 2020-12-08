module Camden
  module StyleGuide
    class Engine < ::Rails::Engine
      isolate_namespace Camden::StyleGuide

      initializer "webpacker.proxy" do |app|
        insert_middleware = begin
                              Camden::StyleGuide.webpacker.config.dev_server.present?
                            rescue
                              nil
                            end
        next unless insert_middleware

        app.middleware.insert_before(
          0, Webpacker::DevServerProxy, # "Webpacker::DevServerProxy" if Rails version < 5
          ssl_verify_none: true,
          webpacker: Camden::StyleGuide.webpacker
        )

      end

      config.app_middleware.use(
        Rack::Static,
        urls: ["/style-guide-packs"], root: "#{Camden::StyleGuide::ROOT_PATH}/public"
      )
    end
  end
end
