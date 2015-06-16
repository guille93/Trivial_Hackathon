class GamesController < ApplicationController
	def index
		@words = ["crazy", "love", "gun","sun","ghost","fast","water","boy","girl","the","kill"]
		@movies = Imdb::Search.new(@words.sample)
		@finalmovies = @movies.movies.take(5)
		@correctanswer = @finalmovies.sample
	end

=begin	def filter (selectedMovies)
		@validmovies = [] 
		selectedMovies.each do |selectedMovie|
			if selectedMovie.poster
				@validmovies << selectedMovie
			end
		end	
		onlyfive(@validmovies)
	end

	def onlyfive (movies)
		@finalmovies = movies.take(5)
	end
=end
end
