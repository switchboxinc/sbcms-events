module SwitchbloxEvents
  class Engine < ::Rails::Engine
    isolate_namespace SwitchbloxEvents

    #The below section makes it so that you don't have to create external migrations
    initializer :append_migrations do |app|
      unless app.root.to_s.match root.to_s
        config.paths["db/migrate"].expanded.each do |expanded_path|
          app.config.paths["db/migrate"] << expanded_path
        end
      end
    end
    
  end
end
