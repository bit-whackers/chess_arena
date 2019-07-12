class MatchesController < ApplicationController

	def index
		@matches = Match.all
	end

	def new
		@match = Match.new
	end


	def create
		Match.create(match_params)
		redirect_to root_path
	end


	def show
		@match = Match.find(params[:id])
	end

	def edit
		@match = Match.find(params[:id])
	end


	def update
		@match = Match.find(params[:id])
		@match.update_attributes(match_params)
		redirect_to root_path
	end

	private

	def match_params
		params.require(:match).permit(:name)
	end

end
