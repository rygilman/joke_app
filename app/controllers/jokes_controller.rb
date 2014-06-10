class JokesController <ApplicationController

	def index
		@jokes = Joke.order("likes DESC").all
	end

	def new
		@joke = Joke.new
	end

	def create
		Joke.create(params[:joke])
		redirect_to '/'
	end

	def like
		joke = Joke.find(params[:id])
		joke.increment(:likes)
		joke.save
		redirect_to '/'
	end
	def flag
		joke = Joke.find(params[:id])
		joke.increment(:flags)
		if joke.flags >=3
			joke.destroy
		else
			joke.save
		end
		redirect_to '/'
	end

end