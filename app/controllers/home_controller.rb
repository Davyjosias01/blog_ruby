class HomeController < ApplicationController
    def index
        @devs = [
            { name: "Lucas Zambiazzi", dev: "python" },
            { name: "Davy Josias", dev: "java" },
            { name: "Lulu Da Pome", dev: "ruby" }
        ]
      # @nome = "davy"
    end
end
