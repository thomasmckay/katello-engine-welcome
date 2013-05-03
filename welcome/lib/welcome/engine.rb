module Welcome
  class Engine < ::Rails::Engine
    initializer :finisher_hook do |engine|
      resources = Dir[File.dirname(__FILE__) + '/navigation/*.rb']
      resources.uniq.each{ |f| require f }
      ::Experimental::Navigation::Additions.insert_before(:dashboard, Welcome::Navigation::Welcome)
    end
  end
end
