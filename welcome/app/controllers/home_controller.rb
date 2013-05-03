module Welcome
  class HomeController < ::ApplicationController
    def rules
      {
        :index => lambda{true}
      }
    end

    def index
    end
  end
end
