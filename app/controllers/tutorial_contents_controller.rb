class TutorialContentsController < ApplicationController
  before_action :set_tutorial_content, only: [:show, :edit, :update, :destroy]

  # GET /tutorial_contents
  # GET /tutorial_contents.json
  def index
    @tutorial_contents = TutorialContent.all
  end

  # GET /tutorial_contents/1
  # GET /tutorial_contents/1.json
  def show
  end

  # GET /tutorial_contents/new
  def new
    @tutorial_content = TutorialContent.new
  end

  # GET /tutorial_contents/1/edit
  def edit
  end

  # POST /tutorial_contents
  # POST /tutorial_contents.json
  def create
    @tutorial_content = TutorialContent.new(tutorial_content_params)

    respond_to do |format|
      if @tutorial_content.save
        format.html { redirect_to @tutorial_content, notice: 'Tutorial content was successfully created.' }
        format.json { render :show, status: :created, location: @tutorial_content }
      else
        format.html { render :new }
        format.json { render json: @tutorial_content.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tutorial_contents/1
  # PATCH/PUT /tutorial_contents/1.json
  def update
    respond_to do |format|
      if @tutorial_content.update(tutorial_content_params)
        format.html { redirect_to @tutorial_content, notice: 'Tutorial content was successfully updated.' }
        format.json { render :show, status: :ok, location: @tutorial_content }
      else
        format.html { render :edit }
        format.json { render json: @tutorial_content.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tutorial_contents/1
  # DELETE /tutorial_contents/1.json
  def destroy
    @tutorial_content.destroy
    respond_to do |format|
      format.html { redirect_to tutorial_contents_url, notice: 'Tutorial content was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tutorial_content
      @tutorial_content = TutorialContent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tutorial_content_params
      params.require(:tutorial_content).permit(:tutorial_id, :name, :image, :sequence)
    end
end
