class MatchesController < ApplicationController
    before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]


  def index
    @matches = Match.all
  end

  def new
    @match = Match.new
  end


  def create
    @match = current_user.matches.create(match_params)

    if @match.valid?
      redirect_to matches_path
    else
      render :new, status: :unprocessable_entity
    end

  end


  def show
    @match = Match.find(params[:id])
  end

  def edit
    @match = Match.find(params[:id])
  end


  def update
    @match = Match.find(params[:id])
    if @match.user != current_user
      return render plain: 'Not Allowed', status: :forbidden
    end

    @match.update_attributes(match_params)

    if @match.valid?
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end
  
  def destroy
    @match = Match.find(params[:id])
    @match.destroy
    redirect_to matches_path
  end

  private

  def match_params
    params.require(:match).permit(:name)
  end

end
