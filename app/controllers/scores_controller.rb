class ScoresController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :set_score, only: [:show, :edit, :update, :destroy]

  # GET /scores
  # GET /scores.json
  def index
    @scores = Score.all
  end

  # GET /scores/1
  # GET /scores/1.json
  def show
  end

  def homepage
    render '/statics/homepage'
  end

def calculate
  @scores = Score.all
  @x = @scores[0].golfer.name
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
  # GET /scores/new
  def new
    @score = Score.new
  end

  # GET /scores/1/edit
  def edit
  end

  # POST /scores
  # POST /scores.json
  def create
    @score = Score.new(score_params)

    respond_to do |format|
      if @score.save
        format.html { redirect_to @score, notice: 'Score was successfully created.' }
        format.json { render :show, status: :created, location: @score }
      else
        format.html { render :new }
        format.json { render json: @score.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /scores/1
  # PATCH/PUT /scores/1.json
  def update
    respond_to do |format|
      if @score.update(score_params)
        format.html { redirect_to @score, notice: 'Score was successfully updated.' }
        format.json { render :show, status: :ok, location: @score }
      else
        format.html { render :edit }
        format.json { render json: @score.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /scores/1
  # DELETE /scores/1.json
  def destroy
    @score.destroy
    respond_to do |format|
      format.html { redirect_to scores_url, notice: 'Score was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_score
      @score = Score.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def score_params
      params.require(:score).permit(:h1, :h2, :h3, :h4, :h5, :h6, :h7, :h8, :h9, :h10, :h11, :h12, :h13, :h14, :h15, :h16, :h17, :h18, :golfer_id, :tournament_id)
    end
end
