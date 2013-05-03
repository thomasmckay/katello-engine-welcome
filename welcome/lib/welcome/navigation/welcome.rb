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
                          ::Welcome::Navigation::Faq.new(organization)
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
  end
end
