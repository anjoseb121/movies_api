module Api
	module V1
		class MoviesController < ApplicationController

			def index
				movies = Movie.all
				render json: movies
			end

			def show
				@movie = Movie.find(params[:id])
				render json: @movie
			end

			def create
				@movie = Movie.new(permit_params)
				if @movie.valid?
					@movie.save
					render json: @movie, status: :created
				else
					render json: { errors: @movie.errors.messages }, status: :unprocessable_entity
				end
			end

			def assign_person
				movie = Movie.find(params[:id])
				person_id = params[:person_id]
				person =  Person.find(person_id)

				movie_person = MoviePerson.new(
					person_id: person.id,
					movie_id: movie.id,
					role: params[:role]
				)

				if movie_person.valid?
					movie_person.save!
					render json: movie_person, status: :created
				else
					render json: { errors: movie_person.errors }, status: 422
				end
			end

			private

			def permit_params
				params.require(:movie).permit(:title, :cover)
			end
		end
	end
end
