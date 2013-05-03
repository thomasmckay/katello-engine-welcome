module Welcome
  class YardController < ::ApplicationController

    def rules
      {
        :index => lambda{true},
      }
    end

    def index
    end

  end
end
