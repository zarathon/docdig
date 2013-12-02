class PortariaController < ApplicationController
  # GET /portaria
  # GET /portaria.json
  def index
    @portaria = Portarium.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @portaria }
    end
  end

  # GET /portaria/1
  # GET /portaria/1.json
  def show
    @portarium = Portarium.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @portarium }
    end
  end

  # GET /portaria/new
  # GET /portaria/new.json
  def new
    @portarium = Portarium.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @portarium }
    end
  end

  # GET /portaria/1/edit
  def edit
    @portarium = Portarium.find(params[:id])
  end

  # POST /portaria
  # POST /portaria.json
  def create
    @portarium = Portarium.new(params[:portarium])

    respond_to do |format|
      if @portarium.save
        format.html { redirect_to @portarium, notice: 'Portarium was successfully created.' }
        format.json { render json: @portarium, status: :created, location: @portarium }
      else
        format.html { render action: "new" }
        format.json { render json: @portarium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /portaria/1
  # PUT /portaria/1.json
  def update
    @portarium = Portarium.find(params[:id])

    respond_to do |format|
      if @portarium.update_attributes(params[:portarium])
        format.html { redirect_to @portarium, notice: 'Portarium was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @portarium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /portaria/1
  # DELETE /portaria/1.json
  def destroy
    @portarium = Portarium.find(params[:id])
    @portarium.destroy

    respond_to do |format|
      format.html { redirect_to portaria_url }
      format.json { head :no_content }
    end
  end
end
