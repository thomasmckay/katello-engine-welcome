module Welcome
  class ApidocController < ::ApplicationController

    def rules
      {
        :index => lambda{true},
      }
    end

    def index
    end

  end
end
