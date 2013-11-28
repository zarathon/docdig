class OficiosController < ApplicationController
  # GET /oficios
  # GET /oficios.json
  def index
    @oficios = Oficio.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @oficios }
    end
  end

  # GET /oficios/1
  # GET /oficios/1.json
  def show
    @oficio = Oficio.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @oficio }
    end
  end

  # GET /oficios/new
  # GET /oficios/new.json
  def new
    @oficio = Oficio.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @oficio }
    end
  end

  # GET /oficios/1/edit
  def edit
    @oficio = Oficio.find(params[:id])
  end

  # POST /oficios
  # POST /oficios.json
  def create
    @oficio = Oficio.new(params[:oficio])

    respond_to do |format|
      if @oficio.save
        format.html { redirect_to @oficio, notice: 'Oficio was successfully created.' }
        format.json { render json: @oficio, status: :created, location: @oficio }
      else
        format.html { render action: "new" }
        format.json { render json: @oficio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /oficios/1
  # PUT /oficios/1.json
  def update
    @oficio = Oficio.find(params[:id])

    respond_to do |format|
      if @oficio.update_attributes(params[:oficio])
        format.html { redirect_to @oficio, notice: 'Oficio was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @oficio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /oficios/1
  # DELETE /oficios/1.json
  def destroy
    @oficio = Oficio.find(params[:id])
    @oficio.destroy

    respond_to do |format|
      format.html { redirect_to oficios_url }
      format.json { head :no_content }
    end
  end
end
