# Welcome
#   Home
#   FAQ
#   Documentation
#     API
#     Developer
module Welcome
  module Navigation

    class Welcome < ::Experimental::Navigation::Menu
      def initialize(organization)
        @type          = 'dropdown'
        @key           = :welcome
        @display       = _("Welcome")
        @authorization = lambda{ organization && organization.readable? }
        @items         = [
                          ::Welcome::Navigation::Home.new(organization),
                          ::Welcome::Navigation::Faq.new(organization),
                          ::Welcome::Navigation::Documentation.new(organization)
                         ]
        super
      end
    end

    class Home < ::Experimental::Navigation::Item
      def initialize(organization)
        @key           = :welcome_home
        @display       = _("Home")
        @authorization = lambda{ organization && organization.readable? }
        @url           = welcome_home_path
      end
    end

    class Faq < ::Experimental::Navigation::Item
      def initialize(organization)
        @key           = :welcome_faq
        @display       = _("FAQ")
        @authorization = lambda{ organization && organization.readable? }
        @url           = welcome_faq_path
      end
    end

    class Documentation < ::Experimental::Navigation::Menu
      def initialize(organization)
        @type          = 'dropdown'
        @key           = :welcome_documentation
        @display       = _("Documentation")
        @authorization = lambda{ organization && organization.readable? }
        @items         = [
                          ::Welcome::Navigation::ApiDoc.new(organization),
                          ::Welcome::Navigation::Yard.new(organization)
                         ]
        super
      end
    end

    class ApiDoc < ::Experimental::Navigation::Item
      def initialize(organization)
        @key           = :welcome_apidoc
        @display       = _("API")
        @authorization = lambda{ organization && organization.readable? }
        @url           = welcome_apidoc_path
      end
    end

    class Yard < ::Experimental::Navigation::Item
      def initialize(organization)
        @key           = :welcome_yard
        @display       = _("Developer")
        @authorization = lambda{ organization && organization.readable? }
        @url           = welcome_yard_path
      end
    end

  end
end
