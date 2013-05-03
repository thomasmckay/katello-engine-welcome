module Welcome
  class WelcomeController < ::ApplicationController
    def rules
      {
        :home => lambda{true},
        :faq  => lambda{true}
      }
    end

    def home
    end

    def faq
    end
  end
end
