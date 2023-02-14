class DiceController < ApplicationController

    def index
        @die1 = rand(1..6)
        @die2 = rand(1..6)
        @total = @die1 + @die2
        @username = params["username"]
        # render /views/dice/index.html.erb
    end
    # instinct variable, which can live longer
    # @sign can connect the front end to the back end
    # seperate responsibility

end
