class TournamentsController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :set_tournament, only: [:show, :edit, :update, :destroy]

  # GET /tournaments
  # GET /tournaments.json
  def index
    @tournaments = Tournament.all
  end

  # GET /tournaments/1
  # GET /tournaments/1.json
  def show
  end

  # GET /tournaments/new
  def new
    @tournament = Tournament.new
  end

#POST 
  def setup_to_score

   raise params.inspect

    render plain: "Set Up For Scoring"
    
  end

  # GET /tournaments/1/edit
  def edit
  end

  # POST /tournaments
  # POST /tournaments.json
  def create
    @tournament = Tournament.new(tournament_params)

    respond_to do |format|
      if @tournament.save
        format.html { redirect_to @tournament, notice: 'Tournament was successfully created.' }
        format.json { render :show, status: :created, location: @tournament }
      else
        format.html { render :new }
        format.json { render json: @tournament.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tournaments/1
  # PATCH/PUT /tournaments/1.json
  def update
    respond_to do |format|
      if @tournament.update(tournament_params)
        format.html { redirect_to @tournament, notice: 'Tournament was successfully updated.' }
        format.json { render :show, status: :ok, location: @tournament }
      else
        format.html { render :edit }
        format.json { render json: @tournament.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tournaments/1
  # DELETE /tournaments/1.json
  def destroy
    @tournament.destroy
    respond_to do |format|
      format.html { redirect_to tournaments_url, notice: 'Tournament was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


def calculate

  raise params.inspect
  
  @scores_all = Score.all

  @scores = Score.where(:tournament_id => 3)
  @length = @scores.length
  @new_array = Array.new


  i = 0

 while i < @length do


      @front9 = @scores[i].h1 + @scores[i].h2 + @scores[i].h3 + @scores[i].h4 + @scores[i].h5 + @scores[i].h6 + @scores[i].h7 + @scores[i].h8 + @scores[i].h9

      @back9 = @scores[i].h10 + @scores[i].h11 + @scores[i].h12 + @scores[i].h13 + @scores[i].h14 + @scores[i].h15 + @scores[i].h16 + @scores[i].h17 + @scores[i].h18 

      @total = @front9 + @back9


      @new_hash = {:golfer => @scores[i].golfer.name, :hole1 =>  @scores[i].h1, :hole2 =>  @scores[i].h2, :hole3 =>  @scores[i].h3, :hole4 =>  @scores[i].h4, :hole5 =>  @scores[i].h5, :hole6 =>  @scores[i].h6, :hole7 =>  @scores[i].h7, :hole8 =>  @scores[i].h8, :hole9 =>  @scores[i].h9,

        :hole10 =>  @scores[i].h10, :hole11 =>  @scores[i].h11, :hole12 =>  @scores[i].h12, :hole13 =>  @scores[i].h13, :hole14 =>  @scores[i].h14, :hole15 =>  @scores[i].h15, :hole16 =>  @scores[i].h16, :hole17 =>  @scores[i].h17, :hole18 =>  @scores[i].h18,

         :front9 =>  @front9, :back9 =>  @back9, :total => @total


      }

    @new_array.push(@new_hash)

        i = i + 1

 end


 @sorted_array = @new_array.sort_by { |k| k[:total] }


 
   render "/results"
end



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tournament
      @tournament = Tournament.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tournament_params
      params.require(:tournament).permit(:date, :course)
    end
end
