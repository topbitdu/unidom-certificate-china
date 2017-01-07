module Unidom
  module Certificate
    module China

      class Engine < ::Rails::Engine

        include Unidom::Common::EngineExtension

        isolate_namespace Unidom::Certificate::China

        enable_initializer enum_enabled: false, migration_enabled: true

      end

    end
  end
end
