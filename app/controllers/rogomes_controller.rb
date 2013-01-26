class RogomesController < ApplicationController
  # GET /rogomes
  # GET /rogomes.json
  def index
    @rogomes = Rogome.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @rogomes }
    end
  end

  # GET /rogomes/1
  # GET /rogomes/1.json
  def show
    @rogome = Rogome.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @rogome }
    end
  end

  # GET /rogomes/new
  # GET /rogomes/new.json
  def new
    @rogome = Rogome.new

    if not session[:user_id]
      return redirect_to "/log_in"
    end

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @rogome }
    end
  end

  # GET /rogomes/1/edit
  def edit
    @rogome = Rogome.find(params[:id])
  end

  # POST /rogomes
  # POST /rogomes.json
  def create
    @rogome = Rogome.new(params[:rogome])

    @rogome.user = User.find(session[:user_id])

    respond_to do |format|
      if @rogome.save
        format.html { redirect_to @rogome, notice: 'Rogome was successfully created.' }
        format.json { render json: @rogome, status: :created, location: @rogome }
      else
        format.html { render action: "new" }
        format.json { render json: @rogome.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /rogomes/1
  # PUT /rogomes/1.json
  def update
    @rogome = Rogome.find(params[:id])

    respond_to do |format|
      if @rogome.update_attributes(params[:rogome])
        format.html { redirect_to @rogome, notice: 'Rogome was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @rogome.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rogomes/1
  # DELETE /rogomes/1.json
  def destroy
    @rogome = Rogome.find(params[:id])
    @rogome.destroy

    respond_to do |format|
      format.html { redirect_to rogomes_url }
      format.json { head :no_content }
    end
  end
end
