class QuestionsController < ApplicationController
  # GET /questions
  # GET /questions.json
  def index
    @questions = Question.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @questions }
    end
  end

  # GET /questions/1
  # GET /questions/1.json
  def show
    @question = Question.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @question }
    end
  end

  # GET /questions/new
  # GET /questions/new.json
  def new
    @question = Question.new

    respond_to do |format|
      format.html # new.html.erb
      :close

:close
    end
  end

  # GET /questions/1/edit
  def edit
    @question = Question.find(params[:id])
  end

  # POST /questions
  # POST /questions.json
  def create
    @rogome = Rogome.find(params[:rogome_id])

    if session[:user_id]
      @question = @rogome.questions.create(params[:question])
      @question.user =  User.find(session[:user_id])
      @question.save
    end

    redirect_to rogome_path(@rogome)
  end

  # PUT /questions/1
  # PUT /questions/1.json
  def update
    @question = Question.find(params[:id])

    respond_to do |format|
      if @question.update_attributes(params[:question])
        format.html { redirect_to @question, notice: 'Question was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @question.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /questions/1
  # DELETE /questions/1.json
  def destroy
    @question = Question.find(params[:id])
    @question.destroy

    respond_to do |format|
      format.html { redirect_to questions_url }
      format.json { head :no_content }
    end
  end

  def upvote
    @question = Question.find(params[:id])

    if not session[:user_id]
      respond_to do |format|
        format.html { redirect_to rogome_path(@question.rogome) }
        format.json { head :no_content }
      end
      return
    end

    @user_upvote = UserUpvote.new
    @user_upvote.question = @question
    @user_upvote.user = User.find(session[:user_id])

    success = @user_upvote.save

    respond_to do |format|
      format.html { redirect_to rogome_path(@question.rogome) }
      format.json { render :json => { :success => success } }
    end
  end

  def unupvote
  end
end
